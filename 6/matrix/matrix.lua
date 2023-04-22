return function(s)
    local string_matrix = s

    --get each row with spaces between the items
    function get_rows_with_spaces(str)
        local rows_space = {}
        for word in str:gmatch('[^\n]+') do
            table.insert(rows_space,word)
        end
        return rows_space
    end


    -- calculate the number for items per row. Will need when we get the columns
    function get_number_columns(rows_with_space)
        local items_per_row = {}
        for word in rows_with_space[1]:gmatch("%d+") do
            table.insert(items_per_row, word)
        end
        return #items_per_row
    end

-- put comma and space between the row elements and seperate rows
    function get_single_items(rows_space)
        local single_items = {}
        for i,v in ipairs(rows_space) do
            for item in v:gmatch("%d+") do
                table.insert(single_items,item)
            end
        end
        return single_items
    end

    function get_number_rows(num_single_items, number_of_rows)
        return num_single_items/number_of_rows
    end

    function get_rows(single_items,number_of_rows, number_of_columns)
        local rows = {}
            local count = 1
            for i=1, number_of_rows, 1 do
                    row = {}
                for j=1, number_of_columns, 1 do
                    table.insert(row, tonumber(single_items[count]))
                    count = count+1
                end
                table.insert(rows, row)
            end
        return rows
    end

    function get_columns(single_items,number_of_columns)
        local cols = {}
        for i=1, number_of_columns, 1 do
            local col = {}
            for j=i, #single_items, number_of_columns do
                table.insert(col, tonumber(single_items[j]))
            end
            table.insert(cols, col)
        end
        return cols 
    end

    local rows_with_spaces = get_rows_with_spaces(string_matrix)
    local single_items = get_single_items(rows_with_spaces)
    local num_columns=get_number_columns(rows_with_spaces)
    local num_rows= get_number_rows(#single_items,num_columns)
    local rows = get_rows(single_items,num_rows, num_columns)
    local cols = get_columns(single_items,num_columns)

 return {
     row = function(number)
         return rows[number]
     end,
 
     column = function(number)
         return cols[number]
     end
 }
 end
