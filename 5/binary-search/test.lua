local lib = require('binary-search') 
local TracedArray = require('TracedArray')
--print(arr)
--table.remove(arr, 1)
--print(arr)
--local array = TracedArray{94 }
local array = TracedArray{6, 67, 123, 345, 456, 457, 490, 2002, 54321, 54322 }

tg = 54323
print("tg: " .. tg)

print("Index: " .. lib(array, tg))
print("Acc: " ..array.access_count)
