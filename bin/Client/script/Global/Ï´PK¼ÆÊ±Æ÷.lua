-- ϴPK��ʱ��.lua
-- Update: Dan_Deng(2003-11-27)
-- Timer: 9

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer()
	Uworld96 = GetTask(96)
	PK_value = GetPK()
	StopTimer()
	if (PK_value > 1) then		-- ��δϴ��PKֵ
		Msg2Player("ͨ�����Ļڹ���������������ˡ�")
		SetPK(PK_value - 1)
		SetTask(96,Uworld96 - 1)
		SetTimer(12 * CTime * FramePerSec, 9)						--���¿�ʼ��ʱ��12��ʱ��==120���ӣ�
	else							-- ϴ��PK��
		Msg2Player("����̷�ʡ��������֮��������ϴ�����Լ���������")
		SetPK(0)
		SetTask(96,100)
	end
end;

