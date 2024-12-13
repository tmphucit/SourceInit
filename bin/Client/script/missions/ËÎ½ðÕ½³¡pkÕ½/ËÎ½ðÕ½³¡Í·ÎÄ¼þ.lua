MAX_S_COUNT = 50;
MAX_J_COUNT = 50;
TIMER_1 = 300;
TIMER_2 = 30000;

MS_STATE = 1; --�����м�¼����״̬�ı���ID
--�ñ���ָ���״ֵ̬0��ʾս��Ϊ�򿪣�1��ʾս�۱����У�2��ʾս��ս�������У�3��ʾս�۸ոս�����

MS_SJTASKID = 20;
MS_J_DEATHCOUNT = 3; --�����м�¼�����������ı���ID
MS_S_DEATHCOUNT = 4; --�����м�¼�����������ı���ID

MS_S_SIGHCOUNT  = 5;--�������η�������������
MS_J_SIGHCOUNT  = 6;--�����н𷽹�����������
MS_KEY = 7;		--��¼��ǰ��ͼ�������һ��key����һ��������ɵ�����


SJTASKID = 230; --��¼��ҵ�ǰ����ID
SJTASKVLAUE = 231; --��¼��ҵ�ǰ�����ֵ,��¼������,��Ϊ1����Ϊ2
SJTASKKEY = 232; --��¼��ҵ�ǰ�����key��


MS_SIGN_MONEY = 3000; --������

-------------------------------------------------------------------------
function GameOver()
idx = 0;

for i = 1 , 500 do 
	idx, pidx = GetNextPlayer(1,idx, 0);
	if (idx == 0) then 
 		break
 	end;
	if ( GetMSIdxGroup(1, idx) == 2) then --jing
		PlayerIndex = pidx;
		camp = GetCamp();
		SetCurCamp(camp);
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
		--DelMSPlayer(1,PlayerIndex);
		SetRevPos(100,45)
		SetFightState(1)
		SetPunish(1)
		NewWorld(44, 1585,3215);
	else				--song
		PlayerIndex = pidx;
		camp = GetCamp();
		SetCurCamp(camp);
		SetLogoutRV(0);
		SetCreateTeam(1);
		SetDeathScript("");
		--DelMSPlayer(1, PlayerIndex);
		SetRevPos(78,30)
		SetFightState(1)
		SetPunish(1)
		NewWorld(44, 886,4499);
	end;
end;


end;

-------------------------------------------------------------------------
function WinBonus(WinGroup, LoserGroup)
LCount = GetMissionV(LoserGroup + 4);
WCount = GetMissionV(WinGroup + 4);

TotalMoney = (LCount + WCount) * MS_SIGN_MONEY * 0.9 
Winner = GetMSPlayerCount(1, WinGroup);
if (Winner > 0) then
	Bonus = TotalMoney / Winner;
else 
	Bonus = MS_SIGN_MONEY;
end;


idx = 0;
for i = 1 , 500 do 
	idx, pidx = GetNextPlayer(1, idx, WinGroup);
 	if (idx == 0) then 
		break
	end;
 
 	if (pidx > 0) then
   		PlayerIndex = pidx;
   		Earn(Bonus + MS_SIGN_MONEY);
   		AddLeadExp(1000);
   		AddRepute(20);
 	end;

end;

end;

-------------------------------------------------------------------------
function SJ_JoinJ()
AddMSPlayer(1,2);
SetCurCamp(2);
SetFightState(0);
SetLogoutRV(1);
SetPos(47584/32, 106880/32);
SetPunish(0);
SetTempRevPos(44, 1573*32 ,3874 * 32);

SetCreateTeam(0);
V = GetMissionV(6);
SetMissionV(6, V + 1);
SetTask(SJTASKID, MS_SJTASKID);
SetTask(SJTASKKEY, GetMissionV(MS_KEY));
SetTask(SJTASKVLAUE, 2);
str = GetName().."�����˽���Ӫ,Ŀǰ������Ϊ"..GetMSPlayerCount(1,2);
Msg2MSAll(1,str);
SetDeathScript("\\script\\missions\\�ν�ս��pkս\\��������1.lua");

--��Ϊ��ҽ��˱����ѣ���ʽ�����������ʾ�Ի�

Talk(2, "", 13957, 13958)
end;
-------------------------------------------------------------------------

function SJ_JoinS()
AddMSPlayer(1,1);
SetCurCamp(1);
SetFightState(0);
str = GetName().."�������η���Ӫ,Ŀǰ������Ϊ"..GetMSPlayerCount(1,1);
SetDeathScript("\\script\\missions\\�ν�ս��pkս\\��������.lua");
SetLogoutRV(1);
SetCreateTeam(0);
SetPunish(0)
SetPos(31168/32, 133472/32);
SetTempRevPos(44, 1515 * 32, 3980 * 32);
Msg2MSAll(1,str);
V = GetMissionV(5);
SetMissionV(5, V + 1);
SetTask(SJTASKID, MS_SJTASKID);
SetTask(SJTASKKEY, GetMissionV(MS_KEY));
SetTask(SJTASKVLAUE, 1);
Talk(2,"", 13959, 13960)
end;

-------------------------------------------------------------------------
--Group��ʾ�Ի����������ķ��ģ�1Ϊ�Σ�2Ϊ��
--State��ʾ��ǰս�۵�״̬
function CheckLastBattle(Group, State)

if (Group == 1) then 
	JoinFun = SJ_JoinS;
else
	JoinFun = SJ_JoinJ;
end;

local MKey = GetMissionV(MS_KEY); --��ǰս�۵�ΨһKey��
local Taskid = GetTask(SJTASKID); --��ս�����͵�ID
local TaskV = GetTask(SJTASKVLAUE);

if (Taskid == MS_SJTASKID) then 
	local TaskKey = GetTask(SJTASKKEY)
    if (TaskKey == MKey) then 
		if (TaskV == Group) then
			JoinFun();
			if (State == 2) then
				SetFightState(1);
			end;
			Msg2Player("��ӭ���ٴλص�ս��!");
		elseif (State == 2) then
			return 2 --��ʾ�ǵ�ǰ��Ӫ
		else 
			return 0
		end
		return 1;
	else
--		Say(13961 ,0);
		return 0;
	end;
end;
return 0;
end;
-------------------------------------------------------------------------
