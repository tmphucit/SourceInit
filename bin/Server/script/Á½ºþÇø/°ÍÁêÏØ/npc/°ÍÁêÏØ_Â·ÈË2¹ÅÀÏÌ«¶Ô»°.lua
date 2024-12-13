--两湖区 巴陵县 路人2古老太对话
--巴陵县新手任务：古老太的宝贝
--suyu

-------------------------------------------
function main(sel)

UTask_world19 = GetTask(47);

if ((GetCamp() == 0) and (UTask_world19 <= 2)) then
	UTaskMain()
else
	Default()
end;	
	
end;

-------------------------------------------
function UTaskMain()

if(UTask_world19 == 0) then
	UTask_world19_0()
end;

if(UTask_world19 == 1) then
	UTask_world19_1()
end;

end;

-------------------------------------------
function Default()

i = random(0,1)

if (i == 0) then
	Say("古老太：渔民苦啊！我有两个儿子都是在湖上打鱼的时候遇上风浪淹死的。",0)
	return
end;

if (i == 1) then
	Say("古老太：打鱼的人家没鱼吃，不打鱼的话连饭也没的吃！",0)
end;

end;

-------------------------------------------
function UTask_world19_0()
	Say("古老太：我的小儿子三天前出去打鱼，到现在还没有回来，我老了，走不动了。你帮我到湖边去看看他是不是回来了好么？",2,"帮忙/yes","不帮/no")
end;

-------------------------------------------
function UTask_world19_1()

if(HaveItem("紫烟玉佩") == 1) then
	Talk(2, "", "古老太：这不是我小儿子的玉佩么，难道……难道……呜呜呜，我的儿子们死的好惨呀，让我这个老婆子后半辈子怎么活呀……", "古老太：谢谢你帮忙找到这块玉佩，看着它我感觉到儿子就在我身边……，这张字画是家传的宝贝，我这个老太婆一个字也不认识，就送给你吧。呜呜呜……")
	DelItem("紫烟玉佩")
	AddEventItem("字画")
	SetTask(47, 2)
else
	Say("古老太：码头就在县城的东边，打鱼的人家都从那里上岸，你看到他就跟他说他娘在这里等他咧，咳咳……",0)
end

end;

-------------------------------------------
function yes()
	Say("古老太：你看我都老糊涂了，忘记告诉你他什么样子，咳咳……他脖子上带着一块玉佩，很好认的。",0)
	SetTask(47, 1)
end;

-------------------------------------------
function no()
	Say("古老太：你有事的话就不麻烦你了。",0)
end;

-------------------------------------------
