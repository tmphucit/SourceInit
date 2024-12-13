## Maps name to EN

### Replace maps to english

```C
char oldChar[76] ={'Á','»','Þ','¶','«','¬','¸','µ','·','¹', '¢','©','Ê','Ç','È','É','Ë', '¡','¨','¾','¼','½','Æ','§','®', 'Ð','Ì','Î','Ï','Ñ','£','ª','Õ', 'Ò','Ó','Ô','Ö','Ý','×','Ø','Ü','ã','ß','á','â','ä', '¤','è','å','æ','ç','é','¥','í','ê','ë','ì','î','ó','ï','ñ','ò','ô','¦','­','ø','õ','ö','÷','ù','ý','ú','û','ü','þ'};
char newChar[76] ={'A','a','i','a','o','o','a','a','a','a', 'a','a','a','a','a','a','a', 'a','a','a','a','a','a','D','d', 'e','e','e','e','e','e','e','e', 'e','e','e','e','i','i','i','i','o','o','o','o','o', 'o','o','o','o','o','o','o','o','o','o','o','o','u','u','u','u','u','u','u','u','u','u','u','u','y','y','y','y','y'};

char* ConvertToEng(char* input) {
	for (int i = 0; strlen(input); i++) {
		for (int j = 0; j < sizeof(oldChar) - 1; j++) {
			if (input[i] == oldChar[j]) {
				input[i] = newChar[j];
				break;
			}
		}
	}
	
	return input;
}

BOOL KSubWorldSet::Load(LPSTR szFileName)
{
	KIniFile	IniFile, IniMapListFile;
	char		szKeyName[32], szKeyMapName[32];
	char		szMapName[76];
	int			nWorldID;
	int			nWorldCount = 0;

	IniMapListFile.Load("\\settings\\maplist.ini");

	IniFile.Load(szFileName);
	IniFile.GetInteger("Init", "Count", 1, &nWorldCount);
	if (nWorldCount > MAX_SUBWORLD)
		return FALSE;

	for (int i = 0; i < nWorldCount; i++)
	{
		sprintf((char*)szKeyName, "World%02d", i);
		IniFile.GetInteger("World", szKeyName, 1000, &nWorldID);

		sprintf((char*)szKeyMapName, "%02d_name", nWorldID);
		IniMapListFile.GetString("List", szKeyMapName, "", szMapName, sizeof(szMapName));

#ifdef _SERVER
		SubWorld[i].m_nIndex = i;
		if (!SubWorld[i].LoadMap(nWorldID))
		{
			printf("Failed to Load Map %d -- %s\n", nWorldID, ConvertToEng(szMapName));
		} else {
			printf("Success to Load Map %d -- %s\n", nWorldID, ConvertToEng(szMapName));
		}
#endif
	}
	return TRUE;
}
```

### Wrap text

```C
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MIN_LEN 48
#define MAX_LEN 60

void wrap_text(const char *text) {
    int length = strlen(text);
    int start = 0;

    while (start < length) {
        int end = start + MAX_LEN;
        if (end > length) {
            end = length;
        }

        int wrap_at = -1;
        int i;
        for (i = end; i >= start + MIN_LEN; i--) {
            if (isspace(text[i])) {
                wrap_at = i;
                break;
            }
        }

        if (wrap_at == -1) {
            wrap_at = end;
        }

        for (i = start; i < wrap_at; i++) {
            putchar(text[i]);
        }
        // putchar('\n');
        printf(" <enter>");

        start = wrap_at + 1;
    }
}

int main() {
    const char *text = "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful";

    wrap_text(text);

    return 0;
}
```

