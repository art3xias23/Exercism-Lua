local house = {}

local myTable = {}

table.insert(myTable,({"house","Jack built."}))
table.insert(myTable,({"malt","lay in" }))
table.insert(myTable,({"rat","ate" }))
table.insert(myTable,({"cat","killed" }))
table.insert(myTable,({"dog","worried" }))
table.insert(myTable,({"cow with the crumpled horn","tossed" }))
table.insert(myTable,({"maiden all forlorn","milked" }))
table.insert(myTable,({"man all tattered and torn","kissed"}))
table.insert(myTable,({"priest all shaven and shorn","married" }))
table.insert(myTable,({"rooster that crowed in the morn","woke"}))
table.insert(myTable,({"farmer sowing his corn", "kept"}))
table.insert(myTable,({"horse and the hound and the horn", "belonged to"}))


house.verse = function(which)

    local count = which
    local verses = "This is"
    for i,v in pairs(myTable) do
        if which >= i then
            local th = ""
            if (count == 1) then 
                th = ' that ' 
            else 
              th=  '\nthat ' 
            end
           verses = verses .. " the " .. myTable[count][1] .. th .. myTable[count][2]
           count = count - 1
       end
    end
    return verses
end

house.recite = function()
    local fullPoem = ""
    for i = 1,#myTable,1
    do
        fullPoem =fullPoem .. house.verse(i)
        if i == #myTable then
        else
            fullPoem = fullPoem .. "\n"
        end
    end
    return fullPoem
end

return house
