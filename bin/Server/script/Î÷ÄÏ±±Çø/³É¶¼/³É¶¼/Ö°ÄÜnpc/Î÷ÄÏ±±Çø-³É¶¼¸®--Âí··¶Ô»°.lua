--西南北区 成都府 马贩对话

function main(sel)

Say("马贩：你真是有眼光，我这儿的马都是上等的好马！这匹“万里奔驰”是蒙古纯种马，能日行千里，十日不休。这匹“水上流星”更厉害，它是突厥马，可以履水草沼泽如平地，买一匹吧！", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(47);  			--弹出交易框
end;


function no()
end;