function GetSkillLevelData(levelname, data, level)

if (levelname == "stun_p") then
return Getstun_p(level)
end;

if (levelname == "skill_cost_v") then
return Getskill_cost_v(level)
end;

str1 = ""
return str1
end;

function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;

function Getstun_p(level)
result1 = floor(log10(level+5)*25)
result2 = 9+level
return Param2String(result1,result2,0)
end;

function Getskill_cost_v(level)
result = 50+level*2
return Param2String(result,0,0)
end;
