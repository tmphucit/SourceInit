function GetSkillLevelData(levelname, data, level)

if (levelname == "physicsenhance_p") then
return Getphysicsenhance_p(level)
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

function Getphysicsenhance_p(level)
result = 24+floor(level*3.3)
return Param2String(result,0,0)
end;

function Getskill_cost_v(level)
result = 20+floor(level/2)
return Param2String(result,0,0)
end;


