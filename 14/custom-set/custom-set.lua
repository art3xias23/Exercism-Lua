return function(...)
    obj = {...}
    obj.argCount = #obj 

    function obj:is_empty()
        return #obj == 0
    end

    function obj:contains(param)
        for i =1, obj.argCount do
            if obj[i] == param then
                return true
            end
        end
        return false
    end

    function obj:is_subset(tblArgs)
        for i=1, obj.argCount do
            for j=1, tblArgs.argCount do
                if not tblArgs:contains(obj[i]) then
                    return false
                end
            end
        end
        return true
    end

    function obj:is_disjoint(tablArgs)
        for i=1, obj.argCount do
            for j=1, tableArgs.argCount do
                if obj[i] == tableArgs[j] then
                    return true
                end
            end
        end
        return false
    end

    return obj

end
