--两湖区 巴陵县 长江码头船夫对话
--suyu
--200306015

CurWharf = 5;
Include("\\Script\\Global\\station.lua");
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 10) then		--等级达到十级
	Say("船夫：我有个外号叫做“浪里白条”，说起游水的功夫，全巴陵县我认了第二，就没人敢认第一！所以坐我的船你保管放心，你要去哪个码头呀？", 2, "坐船/WharfFun", "不坐/OnCancel");
else		
	Say("船夫：对不起，没到十级的新手不能坐船出村。", 0)
end

end;

---------------------------------------------------------------
function  OnCancel()
   Say("船夫：没银子可坐不了船！",0)
end;

---------------------------------------------------------------