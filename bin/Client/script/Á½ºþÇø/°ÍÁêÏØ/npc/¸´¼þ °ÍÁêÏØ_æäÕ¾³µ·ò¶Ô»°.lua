--两湖区 巴陵县 驿站车夫对话

CurStation = 10;
AddStation(1)			-- 记录角色曾经到过凤翔
AddStation(2)			-- 记录角色曾经到过成都
AddStation(4)			-- 记录角色曾经到过汴京
AddStation(5)			-- 记录角色曾经到过襄阳
AddStation(6)			-- 记录角色曾经到过扬州

Include("\\Script\\Global\\station.lua");

function main(sel)

if (GetLevel() >= 10) then			--等级达到十级
	Say("车夫：这里虽然是湖区，但是陆路往来也很方便，你要坐车去哪里？", 5, "路经的地方/WayPointFun", "路经的城市/StationFun","前往五大門派/wuda","返回的地点/TownPortalFun", "不用了/OnCancel");
else		
	Say("车夫：对不起，没到十级的新手不能坐车出村。", 0)
end

end;

function wuda()
Say("你想去哪個門派?",6,"武當派/wud","天王幫/tiw","峨嵋派/emi","唐門/tag","天忍/tir","暫時不去/canc")
end

function wud()
Say("你到了")
NewWorld(81, 1574, 3224)
end

function tiw()
Say("你到了")
NewWorld(59, 1425, 3472)
end


function emi()
Say("你到了")
NewWorld(13, 1898, 4978)
end

function tag()
Say("你到了")
NewWorld(25, 3982, 5235)
end


function tir()
Say("你到了")
NewWorld(49, 1644, 3215)
end

function  OnCancel()
   Say("车夫：有了钱再来坐车吧。",0)
end;