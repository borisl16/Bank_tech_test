require_relative 'statement'

class BankAccount
    
    def initialize(statement: Statement.new)
        @balance = 0
        @statement = statement 
    end

    def deposit(amount)
        @balance += amount
        @statement.update(credit: amount, balance: @balance)
    end

    def statements
        @statement.display    
    end

    def withdraw(amount)
        @balance -= amount
        @statement.update(debit: amount, balance: @balance)
    end

    def start_balance_get(amount)
        @balance 
    end

end