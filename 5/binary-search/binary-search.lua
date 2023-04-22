local function exist(arr, tg)
    for i,v in ipairs(arr) do
        if v == tg then
            return true
        end
    end
    return false
end

local function range(start_index, end_index, middle_array)
    if(type(middle_array) ~= "table") then
        middle_array = {}
    end

    middle_index = math.floor(((end_index+start_index) / 2))
    middle_item = array[middle_index]

    if exist(middle_array, middle_item) or middle_item==nil then
        return -1
    else
        table.insert(middle_array, middle_item)
    end

    if target == middle_item then
        return middle_index
    elseif target > middle_item then
        return range(middle_index+1, #array, middle_array)
    else 
        return range(1, middle_index - 1, middle_array)
    end
end

local function find(arr, tg)
    if #arr == 0 then
        return -1
    elseif #arr == 1 then
        if arr[1] == tg then
            return 1
        else
            return -1
        end
    end
    target = tg
    array = arr
    return range(1, #array)
end

return find

