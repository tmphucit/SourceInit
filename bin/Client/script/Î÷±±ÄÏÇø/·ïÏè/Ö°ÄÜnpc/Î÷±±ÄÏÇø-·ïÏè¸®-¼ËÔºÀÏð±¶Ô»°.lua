--西北南区 凤翔府 妓院老鸨对话

function main(sel)

if ( GetSex() == 0 ) then      -- 玩家性别为男

	i = random(0,2)
	
	if (i == 0) then
	Say("妓院老鸨：有句老话叫“米脂的婆姨，绥德的汉”，你应该听说过吧？",0)
	return
	end

	if (i == 1) then
	Say("妓院老鸨：俺们万紫园的女娃儿可都是从米脂精挑细选来的，一个个不仅长得细皮嫩肉，白白净净，而且柔情似水，善解人意，公子进来玩玩吧！", 0)
	return
	end

	if (i == 2) then
	Say("妓院老鸨：哎哟，我的小爷，你喜欢什么样的姑娘？我这儿的姑娘个个都是国色天香，包你满意！", 0)
	return
	end

else						  -- 玩家性别为女

	Say("妓院老鸨：哟，这可是件新鲜事，大闺女也来逛妓院！不好意思，俺这儿可不接待女客！", 0)

end;



end;