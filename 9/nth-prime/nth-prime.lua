get_prime =  function(n)
if(n < 1) then
    error("Nth number should be 1 or above")
end

count = 0;

for i = 2, math.huge, 1 do
    if(is_prime(i)) then
        count = count + 1
    end

    if(count ==n) then
        return i 
    end

end

end

function is_prime(n)
    if n > 2 and n%2 == 0 then return false end
    for i=3, math.sqrt(n), 2 do
        if n%i == 0 then  
            return false 
        end
    end
    return true
end

return get_prime
