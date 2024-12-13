--description: 峨嵋派妙隐10级任务
--author: yuanlan	
--date: 2003/3/4



function emnpc07_UTask_10()

Talk(8, "select", "妙隐：佛祖，弟子有罪，请佛祖责罚弟子，不要去降罪于他……", "玩家：师姐，看你面带愁容，有什么事吗？", "妙隐：说来话长--我出家为尼之前，原本有一个幸福美满的家庭，不料宋金打仗，我相公被当作壮丁拉到了前线，一去数年，了无音讯。", "妙隐：后来听说他死在了沙场上，我伤心欲绝，削发为尼，原打算就此度过残生，谁曾想到，我相公他竟没有死！", "妙隐：他回来后苦苦哀求我还俗，可是我曾发誓此生皈依佛门，怎能因为贪恋红尘而违背在佛祖面前许下的誓言？我、我真是有罪！", "玩家：师姐，你不必自责，要怪就怪世事难料，造化弄人。", "妙隐：如果我不还俗，相公就不肯离开峨嵋，他说要日日站在山下等我，直至我回心转意。这可如何是好？我真是心乱如麻！", "玩家：师姐，你的心意究竟如何？你还爱他吗？");
DelItem("左半面铜镜");							--防止重接任务后，玩家捡起任务道具
DelItem("右半面铜镜");							--防止重接任务后，玩家捡起任务道具
DelItem("铜镜");							--防止重接任务后，玩家捡起任务道具

end;


function select()
Say("妙隐：如果今生情缘注定如此，我又怎敢强求？当年他从军时，曾把一面铜镜分成两半，说是作为日后相聚时的印证，难道破镜还能重圆吗？", 2, "让我试试/accept", "没办法/refuse");
end;


function accept()
Talk(2, "select1", "玩家：破镜未必不能重圆，师姐，你把那<color=Red>半面铜镜<color>给我，我到<color=Red>成都<color>找<color=Red>铁匠<color>试试，看看有什么办法。", "妙隐：真能行吗？好吧，<color=Red>另半面铜镜<color>在我<color=Red>相公<color>那儿，他就在<color=Red>山脚下的树林<color>里。");
end;


function refuse()
end;


function select1()
AddEventItem("左半面铜镜");
Msg2Player("得到左半面铜镜。");
SetTask(1, 12);
end;   








