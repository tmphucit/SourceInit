function GetSkillLevelData(levelname, data, level)

if (levelname == "lightingdamage_v") then
return Getlightingdamage_v(level)
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

function Getlightingdamage_v(level)
result1 = 6+level*4
result2 = 11+level*6
return Param2String(result1,0,result2)
end;

function Getskill_cost_v(level)
result = 20
return Param2String(result,0,0)
end;

