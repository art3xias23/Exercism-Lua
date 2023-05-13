local nth = require("nth-prime")

function benchmark(func)
local start = os.clock()
func()
return os.clock() - start
end

exec_time = benchmark(function() nth(10001) end)
print("ex: " .. exec_time)
--
--local nth = require("nth-prime")
--result = nth(10001)
--print("res: " .. result)
