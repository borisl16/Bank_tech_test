require_relative 'bank_account'

class Statement 
    
    HEADER = "Date || Credit || Debit || Balance\n"

    def initialize
        @transactions = []
        time = Time.now
        @date = "#{time.day.to_s.rjust(2, "0")}/#{time.month.to_s.rjust(2, "0")}/#{time.year}"
    end

    def update(credit: nil, debit: nil, balance: )
        date = current_date
        credit_or_debit = credit_debit(credit, debit)
        @transactions.insert(0, "#{@date} || #{credit_or_debit} || #{format('%.2f',balance)}")
    end

    def display
        print HEADER + @transactions.join("\n")
    end
end

private

    def current_date
        time = Time.now
    end

    def credit_debit(credit, debit)
        credit ? "#{format('%.2f', credit)} ||" : "|| #{format('%.2f', debit)}"
    end

   
