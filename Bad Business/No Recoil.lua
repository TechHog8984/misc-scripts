local Table;
for I,V in next, getgc(true) do
    if type(V) == 'table' and rawget(V, 'GivePlayerLoadout') then
        Table = V;
        break;
    end;
end;

local BlankVector = Vector3.new(0,0,0);
local OLD; OLD = hookfunction(Table.GetConfig, function(...)
    local RESULT = OLD(...);
    
    if RESULT then
        if RESULT.Recoil and RESULT.Recoil.Default then
            for I, Recoil in next, RESULT.Recoil.Default do
                if type(Recoil) == 'number' then
                    RESULT.Recoil.Default[I] = 0;
                elseif typeof(Recoil) == 'Vector3' then
                    RESULT.Recoil.Default[1] = BlankVector;
                end;
            end;
        end;
    end;
    
    return RESULT;
end);
