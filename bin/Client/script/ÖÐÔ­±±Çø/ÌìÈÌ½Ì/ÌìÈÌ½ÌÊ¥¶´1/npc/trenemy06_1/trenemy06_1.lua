--description: ���̽�ʥ��һ����� 
--author: yuanlan	
--date: 2003/5/20


Include("trenemy06_1_Default.lua")
Include("trenemy06_1_UTask_66.lua")


function OnDeath()

UTask_tr = GetTask(4);

if (UTask_tr == 66) then	
	trenemy06_1_UTask_66()	
else
	trenemy06_1_Default()
end;
	
end;	




