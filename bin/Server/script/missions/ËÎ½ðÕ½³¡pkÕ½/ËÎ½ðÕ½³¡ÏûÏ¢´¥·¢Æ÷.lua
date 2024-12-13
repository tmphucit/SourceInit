Include("宋金战场头文件.lua");
function OnTimer()
timestate = GetMissionV(MS_STATE);

--报名阶段
if (timestate == 1) then 
ReportMemberState();
elseif (timestate == 2) then 
ReportBattle();
elseif (timestate == 3) then 
Msg2MSAll("战役结束!");
StopMissionTimer(1,1);
end;

end;

function ReportMemberState()
--在报名期间，系统定期通知玩家当前的报名情况
str = "宋、金双方当前总人数为:"..GetMSPlayerCount(1,1)..", "..GetMSPlayerCount(1,2);
Msg2MSAll(1, str);
end;

function ReportBattle()
--战斗进行过程中，系统定期通知各方的阵亡情况
str1 = "战况报告:目前伤亡情况:宋军"..GetMissionV(3).."人，金兵"..GetMissionV(4).."人。".."剩余时间:"..(floor(GetMSRestTime(1,5)/20)).."秒";
Msg2MSAll(1, str1);
end;
 
