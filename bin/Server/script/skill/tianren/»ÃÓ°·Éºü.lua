function GetSkillLevelData(levelname, data, level)

if (levelname == "attackratingenhance_p") then
return Getattackratingenhance_p(level)
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

function Getattackratingenhance_p(level)
result1 = -floor(log10(level+1)/2*80)
result2 = 600+600*level
return Param2String(result1,result2,0)
end;

function Getskill_cost_v(level)
result = 20
return Param2String(result,0,0)
end;
