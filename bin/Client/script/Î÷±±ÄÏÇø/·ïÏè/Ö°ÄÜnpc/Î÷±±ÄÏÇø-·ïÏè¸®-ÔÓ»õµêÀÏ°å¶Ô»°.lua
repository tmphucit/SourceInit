--西北南区 凤翔府 杂货店老板对话

function main(sel)

Say("杂货店老板：要买点啥？俺这儿的货可齐全了，要啥有啥，看看吧。", 2, "交易/yes", "不交易/no");

end;


function yes()
Sale(20); 		--弹出交易框
end;


function no()
end;

