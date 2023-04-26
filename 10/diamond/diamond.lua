local main_func = function(letter)
    local items = string.byte(letter) - 64
    local result = {}
    local outter_spaces_for_A = (" "):rep(items - 1)
    local first_row = outter_spaces_for_A .. "A" .. outter_spaces_for_A .. "\n"
    table.insert(result, first_row)

    for i=2, items, 1 do
        local inner_spaces = (" "):rep((2 * i) - 3)
        local outter_spaces = (" "):rep(items-i)
        local letter = string.char(64 + i)

        local row = outter_spaces .. letter .. inner_spaces .. letter .. outter_spaces .. "\n"
        table.insert(result, row)
    end

    for i = #result-1, 1, -1 do
        table.insert(result, result[i])
    end

    return table.concat(result)
end

return main_func
