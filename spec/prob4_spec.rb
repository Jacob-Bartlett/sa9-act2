require_relative "../lib/prob4"
RSpec.describe BankAccount do
    describe "#deposit" do
        it "increases the balance by the deposit amount" do
        bank = BankAccount.new
        bank.deposit(1)
        expect(bank.balance).to eq(1)
        end
    end
    describe "#withdraw" do
        it "decreases the balance by the withdrawal amount if funds are available" do
        bank = BankAccount.new(1)
        bank.withdraw(1)
        expect(bank.balance).to eq(0)
        end
        it "does not change the balance if insufficient funds" do
            bank = BankAccount.new(1)
            bank.withdraw(2)
            expect(bank.balance).to eq(1)
        end
    end
    describe "#balance" do
        it "returns the current balance" do
        init = 1
        bank = BankAccount.new(init)
        expect(bank.balance).to eq(init)
        end
    end
end