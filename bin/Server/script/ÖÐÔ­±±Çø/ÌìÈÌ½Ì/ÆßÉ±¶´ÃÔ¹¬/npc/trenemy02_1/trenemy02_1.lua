--description: ��ɱ������
--author: yuanlan	
--date: 2003/5/18


Include("trenemy02_1_Default.lua")
Include("trenemy02_1_UTask_15.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 15) then	
	trenemy02_1_UTask_15()					
else
	trenemy02_1_Default()
end;
	
end;	


