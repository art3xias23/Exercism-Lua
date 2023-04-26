local main_func =  function(letter)
    number_of_letter = string.byte(letter) - string.byte("A") + 1
    matrix_size = math.floor((number_of_letter * 2) -1)
    
    matrix_half = math.floor(((matrix_size - 1) / 2))
    
    space_char = " " 
    local full_table = {}
    add_top_left(full_table, matrix_half)
    add_bottom_left(full_table, matrix_half)
    add_middle_part(full_table)
    add_top_right(full_table, matrix_half)
    add_bottom_right(full_table, matrix_half)

    local string_table = {}

    for i,v in ipairs(full_table) do
        local str = table.concat(v, "")
        table.insert(string_table, str)
    end

    final_table = string_table
    final_table[#final_table] = final_table[#final_table] .. "\n"
    return table.concat(final_table, "\n")
end

function get_letter_from_number_of_letter(number_of_letter)
    return string.char(64+number_of_letter)
end

function add_top_left(full_table, matrix_half)
    for i =1, matrix_half + 1, 1 do
            local single_row = {}
        for j = matrix_half + 1, 2, -1 do
            if j == i then
                table.insert(single_row, get_letter_from_number_of_letter(i))
            else
                table.insert(single_row, space_char)
            end
        end
        table.insert(full_table, single_row)
    end
end

function add_bottom_left(full_table, matrix_half)
    for i = matrix_half, 1, -1 do
        local single_row = {}
        for j = matrix_half+1, 2, -1 do
            if j == i then
                table.insert(single_row, get_letter_from_number_of_letter(i))
            else
                table.insert(single_row, space_char)
            end
        end
        table.insert(full_table, single_row)
    end
end

function add_middle_part(full_table)
    for i = 1,#full_table,1  do
        if (i == 1 or i == #full_table) then
            table.insert(full_table[i], get_letter_from_number_of_letter(1))
        else
            table.insert(full_table[i], space_char)
        end
    end
end

function add_top_right(full_table, matrix_half)
    for i = 1, matrix_half+1, 1 do
        for j=2, matrix_half+1, 1 do
            if j == i then
        table.insert(full_table[i], get_letter_from_number_of_letter(i))
            else
                table.insert(full_table[i], space_char)
            end
        end
    end
end

function add_bottom_right(full_table, matrix_half)
    for i=1, matrix_half, 1 do
        for j=2 , matrix_half+1, 1 do
        if(i==j) then
        table.insert(full_table[#full_table - i +1], get_letter_from_number_of_letter(i))
            else
        table.insert(full_table[#full_table - i +1], space_char)
            end
        end
    end
end

return main_func
