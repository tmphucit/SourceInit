--中原南区 襄阳府 码头船夫2对话
--suyu
--200306015

CurWharf = 4;
Include("\\Script\\Global\\station.lua");
---------------------------------------------------------------
function main(sel)

	Say("船夫：我们一家的生计全靠这渔划子，有客人过江的时候就载客，冇得客人的时候就捕鱼，就算这样，也只能勉强糊口。", 2, "坐船/WharfFun", "不坐/OnCancel");

end;

---------------------------------------------------------------
function  OnCancel()

	Say("船夫：我还指望这渔划子养家糊口呢，哪能免费送你过江！",0)

end;

---------------------------------------------------------------