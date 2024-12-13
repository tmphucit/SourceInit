Include("宋金战场头文件.lua");

function InitMission()
Msg2Player("战事紧急，大战一触即发.");
StartMissionTimer(1,4,TIMER_1);
SetMissionV(1,1);--允许报名了
SetMissionV(MS_KEY, random(100000))
RevivalAllNpc();
end;

function RunMission()
SetMissionV(1,2);
idx = 0;
for i = 1 , 500 do 
 idx, pidx = GetNextPlayer(1,idx, 0);
 
 if (idx == 0) then 
 break
 end;
 
 if (pidx > 0) then
   PlayerIndex = pidx;
   SetFightState(1);
 end;
 
end;
--此时为GM发布命令，正式打响战斗
PutMessage("敌军已经行动，将士们冲啊！誓取敌方将领首级！");
StartMissionTimer(1,5, TIMER_2);
end;

function EndMission()
SetMissionV(1,0);
SetMissionV(2,0);
SetMissionV(3,0);
SetMissionV(4,0);
SetMissionV(5,0);
SetMissionV(6,0);
StopMissionTimer(1,4);
StopMissionTimer(1,5);
GameOver();
end;

function OnLeave(RoleIndex)
PlayerIndex = RoleIndex;
str2 = GetName().."退出了战场";
SetLogoutRV(0);
Msg2MSAll(1, str2);
end;



