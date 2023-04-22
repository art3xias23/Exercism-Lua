local Hamming = {}

function Hamming.compute(a,b)
    local diff = 0 
    if(string.len(a) == string.len(b))
    then
        for i = 1, string.len(a), 1
        do
           if (a:sub(i,i) ~= b:sub(i,i)) 
           then
            diff= diff + 1
           end
        end
    else
        local diff2 = 0
        if(string.len(a) > string.len(b))
        then
        diff2 = string.len(a) - string.len(b)
        else
        diff2 = string.len(b) - string.len(a)
        end
        diff = diff - diff2
    end
    return diff
end

return Hamming
