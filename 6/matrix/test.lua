local Matrix = require("matrix")
string_matrix = "1 2\n3 4\n5 6"

local mt = Matrix(string_matrix)

local result = mt.row(2)
for i,v in ipairs(result) do
    print(v)
end
