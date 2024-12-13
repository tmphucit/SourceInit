function GetSkillLevelData(levelname, data, level)

if (levelname == "addlightingdamage_v") then
return Getaddlightingdamage_v(level)
end;

str1 = ""
return str1
end;

function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;

function Getaddlightingdamage_v(level)
result = 16+level*8+(floor(level/18)+floor(level/19)+floor(level/20))*17
return Param2String(result,0,0)
end;
