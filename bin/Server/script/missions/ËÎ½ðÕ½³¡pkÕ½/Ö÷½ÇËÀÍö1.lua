--����������ű�
function OnDeath(Launcher)
--LauncherΪıɱ��.

State = GetMissionV(1) ;
if (State == 0) then
return
end;

PlayerIndex1 = NpcIdx2PIdx(Launcher);
OrgPlayer  = PlayerIndex;
DeathName = GetName();

if (PlayerIndex1 > 0) then
PlayerIndex = PlayerIndex1;
LaunName = GetName();
str  = "�ξ�"..LaunName.."�����˽��"..DeathName;
Msg2MSAll(1,str);
PlayerIndex = OrgPlayer;
end;

V = GetMissionV(4);
SetMissionV(4, V + 1);

dataindex = PIdx2MSDIdx(1,PlayerIndex1);
Pan = GetPMParam(1, dataindex, 1);
SetPMParam(1, dataindex, 1, Pan + 1);
end;


