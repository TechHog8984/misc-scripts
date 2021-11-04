function max(...)
    local value = nil
    for i,v in next, {...} do
        if not value then
            value = v
        elseif v > value then
            value = v
        end
    end
    return value
end
function min(...)
    local value = nil
    for i,v in next, {...} do
        if not value then
            value = v
        elseif v < value then
            value = v
        end
    end
    return value
end

return {max = max, min = min}
