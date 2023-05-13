local Set = require("custom-set")
local s1 = Set()
local s2 = Set(1)
print(s1:is_subset(s2))
