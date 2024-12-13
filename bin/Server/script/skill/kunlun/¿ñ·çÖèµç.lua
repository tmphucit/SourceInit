function GetSkillLevelData(levelname, data, level)

if (levelname == "lightingdamage_v") then
return Getlightingdamage_v(level)
end;

if (levelname == "physicsdamage_v") then
return Getphysicsdamage_v(level)
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
result1 = 24+level*9
result2 = 76+level*21
return Param2String(result1,0,result2)
end;


function Getphysicsdamage_v(level)
result = 50+level*15
return Param2String(result,0,result)
end;


function Getskill_cost_v(level)
result = 60
return Param2String(result,0,0)
end;

