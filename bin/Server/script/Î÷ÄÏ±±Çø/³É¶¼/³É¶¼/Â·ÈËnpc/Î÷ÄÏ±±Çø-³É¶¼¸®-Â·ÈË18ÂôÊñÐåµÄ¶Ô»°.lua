--西南北区 成都府 路人18卖蜀绣的对话
--author: yuanlan	
--date: 2003/3/10


function main(sel)

UTask_tm = GetTask(2);

if (UTask_tm == 12) then			--唐门十级任务过程中
Talk(2, "", "梅娘：我这里卖的都是蜀绣名家孙婉的绣品，她是咱们成都府最有名的绣女，针法巧夺天工，而且她家里的绣花针也是全城最齐全的，她家就住在城东南的芙蓉茶舍附近。", "玩家：既是刺绣名家，想必家中绣针不少，也许从她那里能打听到一些关于魔雨针的消息。")
return
end;

i = random(0,1)

if (i == 0) then
Say("梅娘：你是外地人吧？这蜀绣可是咱们“蜀中之宝”，你瞧瞧，针脚齐整，线片光亮，紧密柔和，车拧到家，这可是上好的手工，买件回去做个纪念吧？",0)
return
end;

if (i == 1) then
Say("梅娘：喜欢这件“芙蓉鲤鱼”吗？是不是绣的跟活物似的？",0)
end;

end;