--两湖区 新手客栈 商人对话

function main(sel)

if (GetCurCamp()==0) and (GetCamp()==0)	then			--新手阵营
	UTask_world12 = GetTask(40);
	UTask_world13 = GetTask(41);
	UTask_world14 = GetTask(42);
	UTask_world15 = GetTask(43);
	UTask_world16 = GetTask(44);
	UTask_world17 = GetTask(45);
	
	if (UTask_world15 == 0) then				--第一次点击
		SetTask(43, 1)
		if (UTask_world12 == 1) and (UTask_world13 == 1) and (UTask_world14 == 1) and (UTask_world16 == 1) and (UTask_world17 == 1) then					--是最后一个被点击
			Talk(2, "select", "商人：咱们行商的，干的就是低买高卖的生意。走南闯北也是免不了的。咱是老实人，打小也没练过什么功夫，所以这城里城外来来往往的都靠驿站的马车，只要跟驿站的车夫说话，他就能带你到附近你去过的城市里，安全方便，而且收费也便宜。", "看你一个人出门怪可怜的，我这里正好有一些用不上的装备和一点碎银子，你拿去使吧！")
			if (GetSeries() == 0) then		--金系
				--AddItem(0, 0, 4, 1, 0, 0)
				--AddItem(0, 2, 4, 1, 0, 0)
				--Earn(100)
			end
			if (GetSeries() == 1) then		--木系
				if (GetSex() == 0) then 	--男
					--AddItem(0, 1, 1, 1, 1, 0)
					--AddItem(0, 2, 4, 1, 1, 0)
					--Earn(100)
				else				--女
					--AddItem(0, 1, 2, 1, 1, 0)
					--AddItem(0, 2, 7, 1, 1, 0)
					--Earn(100)
				end										
			end
			if (GetSeries() == 2) then		--水系
				--AddItem(0, 0, 5, 1, 2, 0)
				--AddItem(0, 2, 7, 1, 2, 0)
				--Earn(100)				
			end
			if (GetSeries() == 3) then		--火系
				if (GetSex() == 0) then 	--男
					--AddItem(0, 0, 2, 1, 3, 0)
					--AddItem(0, 2, 4, 1, 3, 0)
					--Earn(100)
				else				--女
					--AddItem(0, 0, 3, 1, 3, 0)
					--AddItem(0, 2, 7, 1, 3, 0)
					--Earn(100)
				end										
			end
			if (GetSeries() == 4) then		--土系
				if (GetSex() == 0) then 	--男
					--AddItem(0, 0, 1, 1, 4, 0)
					--AddItem(0, 2, 4, 1, 4, 0)
					--Earn(100)
				else				--女
					--AddItem(0, 0, 0, 1, 4, 0)
					--AddItem(0, 2, 7, 1, 4, 0)
					--Earn(100)
				end										
			end
		else						--不是最后一个被点击者
			Say("商人：咱们行商的，干的就是低买高卖的生意。走南闯北也是免不了的。咱是老实人，打小也没练过什么功夫，所以这城里城外来来往往的都靠驿站的马车，只要跟驿站的车夫说话，他就能带你到附近你去过的城市里，安全方便，而且收费也便宜。", 0)
		end
	return		
	end;


	if (UTask_world15 == 1) then				--非第一次点击
	Say("商人：只要跟驿站的车夫说话，他就能带你到附近你去过的城市里，安全方便，而且收费也便宜。", 0)
	end;

else								--非新手阵营
	Say("商人：只要跟驿站的车夫说话，他就能带你到附近你去过的城市里，安全方便，而且收费也便宜。", 0)
end;

end;


function select()
--Msg2Player("得到一百两银子和两件基本装备。")
end;