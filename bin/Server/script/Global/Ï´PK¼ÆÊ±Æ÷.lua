-- 洗PK计时器.lua
-- Update: Dan_Deng(2003-11-27)
-- Timer: 9

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer()
	Uworld96 = GetTask(96)
	PK_value = GetPK()
	StopTimer()
	if (PK_value > 1) then		-- 尚未洗完PK值
		Msg2Player("通过静心悔过，你的罪孽减轻了。")
		SetPK(PK_value - 1)
		SetTask(96,Uworld96 - 1)
		SetTimer(12 * CTime * FramePerSec, 9)						--重新开始计时（12个时辰==120分钟）
	else							-- 洗完PK了
		Msg2Player("在深刻反省自身罪行之后，你终于洗清了自己的罪孽。")
		SetPK(0)
		SetTask(96,100)
	end
end;

