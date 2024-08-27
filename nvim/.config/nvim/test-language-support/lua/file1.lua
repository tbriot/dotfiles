--[[ function returning the max between two numbers --]]
local function max(num1, num2)
    local result
    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end

max(2, 3)
