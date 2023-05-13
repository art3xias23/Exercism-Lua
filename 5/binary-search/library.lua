local function get_elements(array, start_index,end_index)
    return_table = {}
    for i=start_index, end_index, 1 do
        table.insert(return_table, array[i])
    end
    return return_table
end

local function has_value(array, search_value)
    for index,value in ipairs(array) do
        if(value==search_value) then
            return true
        end
    end
    return false
end

local function find(array, target)
    if #array == 1 then
        if array[1] == target then
            return 1
        else 
            return -1
        end
    end
    if #array == 2 then
        if array[1] == target then
            return 1
        elseif array[2] ==target then
            return 1
        else 
            return -1
        end
    end
    med = math.floor(#array / 2)
    table1 = get_elements(array,1, med) 
    table2 = get_elements(array, med+1, #array)

    if(has_value(table1, target)) then
        return find(table1,target)
    elseif(has_value(table2,target)) then
        return find(table2, target)
    else
        return -1
    end
    if array[med] == target then
        return 1
    end
end


return find
