local Letters = {}

function Letters:new(s)
    local obj = {word = s, letters_added = {}}
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Letters:add(char)
    table.insert(self.letters_added, char)
end

function Letters:is_present(char)
    for i,v in ipairs(self.letters_added) do
        if(string.lower(v)==string.lower(char)) then
            return true
        end
    end
    return false
end

function Letters:is_isogram()
    for char in self.word:gmatch("%S") do
        if(string.match(char, "[a-zA-Z]")) then
            if(self:is_present(char)) then
                return false
            else
                self:add(char)
            end
        end
    end
    return true
end

is_isogram = function(s)
    local letters = Letters:new(s) 
    return letters:is_isogram()
end
return is_isogram

