local Robot = {}




function Robot:randomChar()
     local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     local randomIndex = math.random(#chars)
     return string.sub(chars,randomIndex, randomIndex)
end

function Robot:randomNum()
    local nums = "0123456789"
    local randomIndex = math.random(#nums)
    return string.sub(nums,randomIndex, randomIndex)
end

function Robot:generateName()
     return self.randomChar() .. self.randomChar() .. self.randomNum() .. self.randomNum() .. self.randomNum()
end

function Robot:new()
    local obj = {
    name = self:generateName()
    }

    setmetatable(obj, self)
    self.__index = self

    return obj
end

function Robot:reset()
    self.name = self:generateName()
end

return Robot
