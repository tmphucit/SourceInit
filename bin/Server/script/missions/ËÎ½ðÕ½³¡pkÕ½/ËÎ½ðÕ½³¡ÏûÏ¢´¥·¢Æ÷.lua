Include("�ν�ս��ͷ�ļ�.lua");
function OnTimer()
timestate = GetMissionV(MS_STATE);

--�����׶�
if (timestate == 1) then 
ReportMemberState();
elseif (timestate == 2) then 
ReportBattle();
elseif (timestate == 3) then 
Msg2MSAll("ս�۽���!");
StopMissionTimer(1,1);
end;

end;

function ReportMemberState()
--�ڱ����ڼ䣬ϵͳ����֪ͨ��ҵ�ǰ�ı������
str = "�Ρ���˫����ǰ������Ϊ:"..GetMSPlayerCount(1,1)..", "..GetMSPlayerCount(1,2);
Msg2MSAll(1, str);
end;

function ReportBattle()
--ս�����й����У�ϵͳ����֪ͨ�������������
str1 = "ս������:Ŀǰ�������:�ξ�"..GetMissionV(3).."�ˣ����"..GetMissionV(4).."�ˡ�".."ʣ��ʱ��:"..(floor(GetMSRestTime(1,5)/20)).."��";
Msg2MSAll(1, str1);
end;
 
