Include("\\script\\npclevelscript\\property.lua")

function GetNpcLevelData(Level, StyleName, ParamStr)
	if(StyleName=="FireResist") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetFireResist(Level,param1,param2);
	end;
	if(StyleName=="PhysicsResist") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetPhysicsResist(Level,param1,param2);
	end;
	if(StyleName=="ColdResist") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetColdResist(Level,param1,param2);
	end;
	if(StyleName=="LightResist") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetLightResist(Level,param1,param2);
	end;
	if(StyleName=="PoisonResist") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetPoisonResist(Level,param1,param2);
	end;
	if(StyleName=="PhysicalDamageBase") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetPhysicalDamageBase(Level,param1,param2);
	end;
	if(StyleName=="PoisonDamageBase") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetPoisonDamageBase(Level,param1,param2);
	end;
	if(StyleName=="ColdDamageBase") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetColdDamageBase(Level,param1,param2);
	end;
	if(StyleName=="FireDamageBase") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetFireDamageBase(Level,param1,param2);
	end;
	if(StyleName=="LightingDamageBase") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetLightingDamageBase(Level,param1,param2);
	end;
	if(StyleName=="Level1") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetSkillLevel1(Level,param1,param2);
	end;
	if(StyleName=="Level2") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetSkillLevel2(Level,param1,param2);
	end;
	if(StyleName=="Level3") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetSkillLevel3(Level,param1,param2);
	end;
	if(StyleName=="Level4") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetSkillLevel4(Level,param1,param2);
	end;
	if(StyleName=="AuraSkillLevel") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetAuraSkillLevel(Level,param1,param2);
	end;
	if(StyleName=="PasstSkillLevel") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetPasstSkillLevel(Level,param1,param2);
	end;
	if(StyleName=="LifeReplenish") then
		param1=GetParam(ParamStr,1);
		param2=GetParam(ParamStr,2);
		return SetLifeReplenish(Level,param1,param2);
	end;
	
	return Linear(Level,1,1);
end;

function GetNpcKeyData(Level, StyleName, Param1, Param2, Param3)
	if (StyleName == "Exp") then
		return SetExp(Level, Param1, Param2,Param3);
	end;
	if (StyleName == "Life") then
		return SetLife(Level, Param1, Param2,Param3);
	end;
	if (StyleName == "AttackRating") then
		return SetAR(Level, Param1, Param2,Param3);
	end;
	if (StyleName == "Defense") then
		return SetDP(Level, Param1, Param2,Param3);
	end;
	if (StyleName == "MinDamage") then
		return SetMinDamage(Level, Param1, Param2,Param3);
	end;
	if (StyleName == "MaxDamage") then
		return SetMaxDamage(Level, Param1, Param2,Param3);
	end;
	
	return Quadratic(Level,Param1,Param2,Param3);
end;