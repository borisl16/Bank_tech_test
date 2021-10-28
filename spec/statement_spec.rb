require 'statement'
#require 'bank_account'

HEADER = "Date || Credit || Debit || Balance\n"

describe Statement do

    before(:each) do
        time = Time.now
        @date = "#{time.day.to_s.rjust(2, "0")}/#{time.month.to_s.rjust(2, "0")}/#{time.year}"
        allow(Time).to receive(:now).and_return(time)
    end

    describe '#display' do
        it "prints headers" do
            expect { subject.display }.to output(HEADER).to_stdout
        end
    end

    it "printing a credit after a deposit" do
        subject.update(credit: 100, balance: 100)
        expect { subject.display }.to output("#{HEADER}#{@date} || 100.00 || || 100.00").to_stdout
    end

    it "printing a debit after a withdrawal" do
        subject.update(debit: 300, balance: -300)
        expect { subject.display }.to output("#{HEADER}#{@date} || || 300.00 || -300.00").to_stdout
      end



end