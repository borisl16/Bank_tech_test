require 'bank_account'


HEADER = "Date || Credit || Debit || Balance\n"

describe BankAccount do
    let(:statement) { double :statement, update: "Now updated." }
    subject { described_class.new(statement: statement)}
    
    describe "#initialization" do
        it "balance of 0 when initialized" do
            expect(subject.start_balance_get(:@balance)).to eq(0)
        end
    end

    describe "#deposit" do
        it "should deposit an amount" do
            subject.deposit(500)
            expect(subject.start_balance_get(:@balance)).to eq(500.00)
        end
    end

    it "update right amount of deposit after adding a new one" do
        subject.deposit(500)
        subject.deposit(500)
        expect(subject.start_balance_get(:@balance)).to eq(1000.00)
      end


end