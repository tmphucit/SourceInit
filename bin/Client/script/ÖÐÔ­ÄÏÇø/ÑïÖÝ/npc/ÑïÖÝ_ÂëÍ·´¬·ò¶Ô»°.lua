--中原南区 扬州府 码头船夫对话
--suyu
--200306015

CurWharf = 6;
Include("\\Script\\Global\\station.lua");
---------------------------------------------------------------
function main(sel)

	Say("船夫：咱们扬州是一个水乡，河多、桥多、舟多，那些有钱人要泛舟游览扬州，靠的就是我们这些船夫。", 2, "坐船/WharfFun", "不坐/OnCancel");

end;

---------------------------------------------------------------
function  OnCancel()

   Say("船夫：没钱坐船你就走旱路吧！",0)

end;

---------------------------------------------------------------