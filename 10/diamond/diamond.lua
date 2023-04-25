local main_func =  function(number)
matrix_size = math.floor((number * 2) -1)
print("matrix size: " ..  matrix_size)

matrix_half = math.floor(((matrix_size - 1) / 2))
print("matrix half: " .. matrix_half)

local full_table = {}
add_first_half(full_table, matrix_half)
add_second_half(full_table, matrix_half)

print("ft count: " .. #full_table)
for i,v in ipairs(full_table) do
    print(table.concat(v, " "))
end

end

function add_first_half(full_table, matrix_half)
    for i =1, matrix_half + 1, 1 do
            local single_row = {}
        for j = matrix_half + 1, 2, -1 do
            if j == i then
                table.insert(single_row, i)
            else
                table.insert(single_row, '.')
            end
        end
        table.insert(full_table, single_row)
    end
end

function add_second_half(full_table, matrix_half)
    for i = matrix_half, 1, -1 do
        local single_row = {}
        for j = 2, matrix_half+1, 1 do
            if j == i then
                print("Row " .. i .. " insert: " .. i) 
                table.insert(single_row, i)
            else
                print("Row " .. i .. " insert: .") 
                table.insert(single_row, '.')
            end
        end
        print("Insert row " .. i)
        table.insert(full_table, single_row)
    end
end

return main_func
