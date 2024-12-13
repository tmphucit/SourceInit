--西北南区 凤翔府 驿站驿官对话 世界任务送信

function main(sel)

--收信

UTask_world28 = GetTask(56);
UTask_world33 = GetTask(61);

if (UTask_world28 == 1) then 
	if ( HaveItem("襄阳送往凤翔的公文") == 1) then				
		DelItem("襄阳送往凤翔的公文")
		        
        	UTask_world02 = GetTask(12)			
		if (UTask_world02 >= 100) then				--超过100次后重新计算送信次数
			SetTask(12, 1)
		else							--得到当前送信次数
			UTask_world02 = UTask_world02 + 1	
			SetTask(12, UTask_world02)			
		end
	
		UTask_world02 = GetTask(12)				--根据送信次数得到不同赏银		
        	if (UTask_world02 < 20)  then Earn(10)  end
        	if (UTask_world02 >= 20) and (UTask_world02 < 60)  then Earn(100)  end
        	if (UTask_world02 >= 60) and (UTask_world02 < 100) then Earn(200)  end
        	if (UTask_world02 == 100) then Earn(500) end
        	
        	Msg2Player("送出襄阳带来的公文，得到酬银。")
        	SetTask(56, 0)
	end
end;	
	
if (UTask_world33 == 1) then 
	if ( HaveItem("扬州送往凤翔的公文") == 1) then				--收信
		DelItem("扬州送往凤翔的公文")
		        
        	UTask_world02 = GetTask(12)			
		if (UTask_world02 >= 100) then				--超过100次后重新计算送信次数
			SetTask(12, 1)
		else							--得到当前送信次数
			UTask_world02 = UTask_world02 + 1	
			SetTask(12, UTask_world02)			
		end
	
		UTask_world02 = GetTask(12)				--根据送信次数得到不同赏银		
        	if (UTask_world02 < 20)  then Earn(10)  end
        	if (UTask_world02 >= 20) and (UTask_world02 < 60)  then Earn(100)  end
        	if (UTask_world02 >= 60) and (UTask_world02 < 100) then Earn(200)  end
        	if (UTask_world02 == 100) then Earn(500) end
        	
        	Msg2Player("送出扬州带来的公文，得到酬银。")
        	SetTask(61, 0)
	end
end;	
	
	
--送信   

UTask_world22 = GetTask(50);
UTask_world23 = GetTask(51);

if (UTask_world22 == 1) and (UTask_world23 == 1) then 		--已全部接受到信
Say("驿官：公文都送到了吗？", 0)
end;

if (UTask_world22 == 1) and (UTask_world23 == 0) then 		--没有拿到送往临安的信
Say("驿官：我这还有需要送往临安的公文，你愿意送吗？", 2, "愿意/b", "我还有别的事/no")
end;

if (UTask_world22 == 0) and (UTask_world23 == 1) then 		--没有拿到送往大理的信
Say("驿官：我这还有需要送往大理的公文，你愿意送吗？", 2, "愿意/a", "我还有别的事/no")
end;

if (UTask_world22 == 0) and (UTask_world23 == 0) then 		--没有拿到任何信
Say("驿官：如今战事频仍，公文繁多，驿站里送信的人手不够，你愿意帮忙送信吗？每次送信都是有酬银的。",  2, "好吧，我就跑一趟/yes", "在下还有别的事/no")
end;
	
end;


function yes()
Say("驿官：公文只要交给当地的驿官就可以了，请选择地点：",  2, "送往大理的公文/a", "送往临安的公文/b");
end;


function no()
end;


function a()
AddEventItem("凤翔送往大理的公文") 
Msg2Player("得到一封送往大理的公文。")
SetTask(50, 1)
end;

function b()
AddEventItem("凤翔送往临安的公文") 
Msg2Player("得到一封送往临安的公文。")
SetTask(51, 1)
end;