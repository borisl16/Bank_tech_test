require 'bank_account'

HEADER = "Date || Credit || Debit || Balance\n"

describe 'See a statement' do
    it 'display the statement with headers' do
        account = BankAccount.new
        expect {account.statements}.to output(HEADER).to_stdout
    end
end