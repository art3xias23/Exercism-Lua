local function square_of_sum(n)
local count = 0
for i = 1, n, 1 
do
    count = count + i
end
return count * count 
end

local function sum_of_squares(n)
local total = 0
for i = 1, n, 1 
do
    total = total + i*i
end
return total 
end

local function difference_of_squares(n)
return square_of_sum(n) - sum_of_squares(n)
end

return {
  square_of_sum = square_of_sum,
  sum_of_squares = sum_of_squares,
  difference_of_squares = difference_of_squares
}
