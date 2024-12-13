#include "KCore.h"
#include "KObjSet.h"
#include "KNpcSet.h"
#include "KSubWorld.h"
#include "KNpc.h"
#include "KIniFile.h"
#include "KSubWorldSet.h"
#include "KMissleSet.h"
#include "LuaFuns.h"
#include "KNpcTemplate.h"
#include "KPlayerSet.h"
#include "KPlayer.h"
extern KNpcTemplate	* g_pNpcTemplate[MAX_NPCSTYLE][MAX_NPC_LEVEL]; //0,0ÎªÆðµã
KSubWorldSet g_SubWorldSet;

KSubWorldSet::KSubWorldSet()
{
	m_nLoopRate = 0;
	m_nGameVersion = ITEM_VERSION;
#ifndef _SERVER
	m_dwPing = 0;
#endif
}

int KSubWorldSet::SearchWorld(DWORD dwID)
{
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		if ((DWORD)SubWorld[i].m_SubWorldID == dwID)
			return i;
	}
	return -1;
}

#ifdef _SERVER
char oldChar[76] ={'Á','»','Þ','¶','«','¬','¸','µ','·','¹', '¢','©','Ê','Ç','È','É','Ë', '¡','¨','¾','¼','½','Æ','§','®', 'Ð','Ì','Î','Ï','Ñ','£','ª','Õ', 'Ò','Ó','Ô','Ö','Ý','×','Ø','Ü','ã','ß','á','â','ä', '¤','è','å','æ','ç','é','¥','í','ê','ë','ì','î','ó','ï','ñ','ò','ô','¦','­','ø','õ','ö','÷','ù','ý','ú','û','ü','þ'};
char newChar[76] ={'A','a','i','a','o','o','a','a','a','a', 'a','a','a','a','a','a','a', 'a','a','a','a','a','a','D','d', 'e','e','e','e','e','e','e','e', 'e','e','e','e','i','i','i','i','o','o','o','o','o', 'o','o','o','o','o','o','o','o','o','o','o','o','u','u','u','u','u','u','u','u','u','u','u','u','y','y','y','y','y'};

char* ConvertToEng(char* input) {
	if (input == NULL) {
        return NULL;
    }

	char* ptr = input;
    while (*ptr != '\0') {
        for (int j = 0; j < sizeof(oldChar) / sizeof(oldChar[0]); j++) {
            if (*ptr == oldChar[j]) {
                *ptr = newChar[j];
				break;
			}
		}
        ptr++;
	}

	return input;
}
#endif

BOOL KSubWorldSet::Load(LPSTR szFileName)
{
#ifdef _SERVER
	KIniFile	IniFile, IniMapListFile;
	char		szKeyName[32], szKeyMapName[32];
	char		szMapName[76];
	int			nWorldID;
	int			nWorldCount = 0;
	int			nWorldFailedCount = 0;

	IniMapListFile.Load("\\settings\\maplist.ini");
	
	IniFile.Load(szFileName);
	IniFile.GetInteger("Init", "Count", 1, &nWorldCount);
	if (nWorldCount > MAX_SUBWORLD)
		return FALSE;


	for (int i = 0; i < nWorldCount; i++)
	{

		sprintf((char*)szKeyName, "World%02d", i);
		IniFile.GetInteger("World", szKeyName, 1000, &nWorldID);

		sprintf((char*)szKeyMapName, "%d_name", nWorldID);
		IniMapListFile.GetString("List", szKeyMapName, "", szMapName, sizeof(szMapName));

		SubWorld[i].m_nIndex = i;
		if (!SubWorld[i].LoadMap(nWorldID))
		{
			nWorldFailedCount++;
			printf("Failed to Load Map %d -- %s\n", nWorldID, ConvertToEng(szMapName));
		} else {
			printf("Load Map %d -- %s Success\n", nWorldID, ConvertToEng(szMapName));
		}

	}

	printf("Total %d Maps, %d Success, %d Failed\n", nWorldCount, nWorldCount - nWorldFailedCount, nWorldFailedCount);
#endif
	return TRUE;
}

int nActiveRegionCount;

void KSubWorldSet::MainLoop()
{
	m_nLoopRate++;

#ifndef _SERVER
//	if (!(m_nLoopRate % 20))
//		SendClientCmdPing();
	// ÓÎÏ·ÒôÀÖµÄ´¦Àí
	this->m_cMusic.Play(SubWorld[0].m_SubWorldID, SubWorld[0].m_dwCurrentTime, Npc[Player[CLIENT_PLAYER_INDEX].m_nIndex].m_FightMode);

#endif
#ifdef _SERVER
//		g_GlobalMissionArray.Activate();
#endif
	nActiveRegionCount = 0;
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		SubWorld[i].Activate();
#ifndef _SERVER
		NpcSet.CheckBalance();
#endif
	}

//	if ((m_nLoopRate % 100) == 0)
//		printf("Region:%d:%d\n", m_nLoopRate, nActiveRegionCount);
#ifdef _SERVER
	PlayerSet.AutoSave();
#endif
}

void KSubWorldSet::MessageLoop()
{
	
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		SubWorld[i].MessageLoop();
	}
}

BOOL KSubWorldSet::SendMessage(int nSubWorldID, DWORD dwMsgType, int nParam1, int nParam2, int nParam3)
{
	KWorldMsgNode *pNode = NULL;
	
	pNode = new KWorldMsgNode;
	if (!pNode)
		return FALSE;
	
	pNode->m_dwMsgType	= dwMsgType;
	pNode->m_nParam[0]	= nParam1;
	pNode->m_nParam[1]	= nParam2;
	pNode->m_nParam[2]	= nParam3;
	if (pNode->m_dwMsgType == 4001) g_DebugLog("Send !!!!");
	return SubWorld[nSubWorldID].m_WorldMessage.Send(pNode);
}

void KSubWorldSet::Close()
{
	for (int i = 0; i < MAX_SUBWORLD; i++)
	{
		SubWorld[i].Close();
	}
	NpcSet.RemoveAll();
#ifndef _SERVER
	Player[CLIENT_PLAYER_INDEX].m_ItemList.RemoveAll();
	Player[CLIENT_PLAYER_INDEX].m_cTeam.Release();
	g_Team[0].Release();
	m_cMusic.Stop();
#endif
}
#ifndef _SERVER
void KSubWorldSet::Paint()
{
	SubWorld[0].Paint();
}
#endif

#ifdef _SERVER
void KSubWorldSet::GetRevivalPosFromId(DWORD dwSubWorldId, int nRevivalId, POINT* pPos)
{
	if (!pPos)
		return;

//	int nIdx = SearchWorld(dwSubWorldId);
//	if (nIdx >= 0)
//	{
	KIniFile IniFile;
	char	szKeyName[32];
	char	szSection[32];
	
	g_SetFilePath("\\settings");
	IniFile.Load("RevivePos.ini");
	sprintf(szSection, "%d", dwSubWorldId);
	sprintf(szKeyName, "%d", nRevivalId);
	
	int nX = 51200;
	int nY = 102400;
	IniFile.GetInteger2(szSection, szKeyName, &nX, &nY);
	
	pPos->x = nX;
	pPos->y = nY;
//	}
}
#endif
