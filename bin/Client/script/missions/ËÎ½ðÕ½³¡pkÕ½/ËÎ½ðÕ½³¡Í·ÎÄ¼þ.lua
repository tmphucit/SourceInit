MAX_S_COUNT = 50;
MAX_J_COUNT = 50;
TIMER_1 = 300;
TIMER_2 = 30000;

MS_STATE = 1; --任务中记录任务状态的变量ID
--该变量指向的状态值0表示战役为打开，1表示战役报名中，2表示战役战斗进行中，3表示战役刚刚结束了

MS_SJTASKID = 20;
MS_J_DEATHCOUNT = 3; --任务中记录金伤亡数量的变量ID
MS_S_DEATHCOUNT = 4; --任务中记录宋伤亡数量的变量ID

MS_S_SIGHCOUNT  = 5;--任务中宋方共报名的人数
MS_J_SIGHCOUNT  = 6;--任务中金方共报名的人数
MS_KEY = 7;		--记录当前地图下任务的一个key，即一个随机生成的数定


SJTASKID = 230; --记录玩家当前任务ID
SJTASKVLAUE = 231; --记录玩家当前任务的值,记录所属方,宋为1，金为2
SJTASKKEY = 232; --记录玩家当前任务的key号


MS_SIGN_MONEY = 3000; --报名费

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
str = GetName().."加入了金方阵营,目前总人数为"..GetMSPlayerCount(1,2);
Msg2MSAll(1,str);
SetDeathScript("\\script\\missions\\宋金战场pk战\\主角死亡1.lua");

--此为玩家交了报名费，正式加入队伍是提示对话

Talk(2, "", 13957, 13958)
end;
-------------------------------------------------------------------------

function SJ_JoinS()
AddMSPlayer(1,1);
SetCurCamp(1);
SetFightState(0);
str = GetName().."加入了宋方阵营,目前总人数为"..GetMSPlayerCount(1,1);
SetDeathScript("\\script\\missions\\宋金战场pk战\\主角死亡.lua");
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
--Group表示对话的主管是哪方的，1为宋，2为金方
--State表示当前战役的状态
function CheckLastBattle(Group, State)

if (Group == 1) then 
	JoinFun = SJ_JoinS;
else
	JoinFun = SJ_JoinJ;
end;

local MKey = GetMissionV(MS_KEY); --当前战役的唯一Key码
local Taskid = GetTask(SJTASKID); --该战役类型的ID
local TaskV = GetTask(SJTASKVLAUE);

if (Taskid == MS_SJTASKID) then 
	local TaskKey = GetTask(SJTASKKEY)
    if (TaskKey == MKey) then 
		if (TaskV == Group) then
			JoinFun();
			if (State == 2) then
				SetFightState(1);
			end;
			Msg2Player("欢迎你再次回到战场!");
		elseif (State == 2) then
			return 2 --表示非当前阵营
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
