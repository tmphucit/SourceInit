function GetSkillLevelData(levelname, data, level)

if (levelname == "lightingarmor_v") then
return Getlightingarmor_v(level)
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

function Getlightingarmor_v(level)
result1 = 78+12*level
result2 = 1200+level*1200
return Param2String(result1,result2,0)
end;

function Getskill_cost_v(level)
result = 18+2*level
return Param2String(result,0,0)
end;
