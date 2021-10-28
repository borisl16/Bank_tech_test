require 'bank_account'


HEADER = "Date || Credit || Debit || Balance\n"


describe 'Customer wants to withdraw money' do
    before(:each) do
        time = Time.now
        @date = "#{time.day.to_s.rjust(2, "0")}/#{time.month.to_s.rjust(2, "0")}/#{time.year}"
        @account = BankAccount.new
end

    it 'amount of withdraw' do
        @account.withdraw(1000)
        expect {@account.statements}.to output("#{HEADER}#{@date} || || 1000.00 || -1000.00").to_stdout
    end

end