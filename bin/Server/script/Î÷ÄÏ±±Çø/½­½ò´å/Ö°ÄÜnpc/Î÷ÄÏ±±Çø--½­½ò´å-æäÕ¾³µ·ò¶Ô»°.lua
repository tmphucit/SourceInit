--���ϱ��� ����� ��վ����Ի�

CurStation = 8;
AddStation(1)			-- ��¼��ɫ������������
AddStation(2)			-- ��¼��ɫ���������ɶ�
AddStation(4)			-- ��¼��ɫ���������꾩
AddStation(5)			-- ��¼��ɫ������������
AddStation(6)			-- ��¼��ɫ������������

Include("\\Script\\Global\\station.lua");

function main(sel)

if (GetLevel() >= 10) then			--�ȼ��ﵽʮ��
	Say("����Ҫ����ȥ�Ķ���", 5, "�����ĵص�/WayPointFun", "·���ĳ���/StationFun", "���صĵص�/TownPortalFun","ǰ������T��/wuda", "������/OnCancel");
else		
	Say("���򣺶Բ���û��ʮ�������ֲ����������塣", 0)
end

end;

function wuda()
Say("����ȥ�Ă��T��?",6,"�䮔��/wud","������/tiw","������/emi","���T/tag","����/tir","���r��ȥ/canc")
end

function wud()
Say("�㵽��")
NewWorld(81, 1574, 3224)
end

function tiw()
Say("�㵽��")
NewWorld(59, 1425, 3472)
end


function emi()
Say("�㵽��")
NewWorld(13, 1898, 4978)
end

function tag()
Say("�㵽��")
NewWorld(25, 3982, 5235)
end


function tir()
Say("�㵽��")
NewWorld(49, 1644, 3215)
end

function  OnCancel()
   Say("����û��Ǯ��ɶ�ӳ���",0)
end;