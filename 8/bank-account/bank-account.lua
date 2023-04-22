local BankAccount = {}

local acc_state = {
OPEN = "Open",
CLOSED = "Closed"
}

function BankAccount:new()
    local instance = {current_balance = 0, account_state = acc_state.OPEN }
    setmetatable(instance, self)
    self.__index=self
    return instance
end

function BankAccount:deposit(sum)
    if(sum<=0) then
        error("Deposit needs to be a positive number")
    end

    if(self.account_state == acc_state.CLOSED) then
        error("Canot deposit into a closed account")
    end
    self.current_balance = self.current_balance + sum
end

function BankAccount:withdraw(sum)
    if(sum<=0) then
        error("Withdrawal needs to be a positive number")
    end

    if (sum > self.current_balance) then
        error("Withdrawal  is more than balance of account")
    end

    if(self.account_state == acc_state.CLOSED) then
        error("Canot withdraw from a closed account")
    end

    self.current_balance = self.current_balance - sum
    end

function BankAccount:balance()
    return self.current_balance
end

function BankAccount:close()
    self.account_state = acc_state.CLOSED
end

return BankAccount
