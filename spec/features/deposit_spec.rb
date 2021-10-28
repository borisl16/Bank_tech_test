require 'bank_account'
require 'statement'

HEADER = "Date || Credit || Debit || Balance\n"

describe 'Client makes a deposits' do
        before(:each) do
        time = Time.now
        @date = "#{time.day.to_s.rjust(2, "0")}/#{time.month.to_s.rjust(2, "0")}/#{time.year}"
        @account = BankAccount.new
    end

    it 'amount of deposit' do
        @account.deposit(1000)
        expect { @account.statements }.to output("#{HEADER}#{@date} || 1000.00 || || 1000.00").to_stdout
    end
end