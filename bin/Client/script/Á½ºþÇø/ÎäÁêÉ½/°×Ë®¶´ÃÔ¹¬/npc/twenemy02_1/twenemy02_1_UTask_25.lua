--description: 武陵山 白水洞敌人 天王帮20级任务战斗死亡
--author: yuanlan	
--date: 2003/4/25


function twenemy02_1_UTask_25()

Task0011 = GetTaskTemp(11)
Task0012 = GetTaskTemp(12)

if ( HaveItem("一面锦旗") == 0) then					--没有一面锦旗
	SetTaskTemp(10, 1)
	if ( Task0011 == 1 and Task0012 == 1) then
		Msg2Player("打败土匪，附近村民送出一面锦旗作为感谢。")
		AddEventItem("一面锦旗") 
		SetTask(3, 28)
	end
end;

end;