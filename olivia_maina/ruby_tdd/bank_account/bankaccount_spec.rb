require_relative 'bank_account'
RSpec.describe BankAccount do
    before(:each) do
        @account1 = BankAccount.new(50,500)
    end 
    #USED METHOD TO RETRIEVE
    it 'has a getter method for retrieving the checking account balance' do
        expect(@account1.check_bal).to eq("Checking account balance is: 50")
    end 
    #ALTERNATE WAY OF RETRIEVING CHECKING ACCT BAL - BY GETTING THE SET VARIABLE 
    # it 'has a getter method for retrieving the checking account balance' do 
    #     expect(@account1.checking_account).to eq(50)
    # end

    it 'has a getter method that retrieves the total account balance' do 
        expect(@account1.total).to eq(550)
    end 
    
    it 'has a function that allows the user to withdraw cash' do 
        expect(@account1.withdraw('checking', 20)).to eq(30)
    end 
    it "can't withdraw money, not enough in account" do
        expect{@account1.withdraw('savings',600)}.to raise_error("Insufficient funds")
    end
    #total number of accounts has no setter
    it "Raises error, user cannot view the total number of bank accounts" do 
        expect{@account1.number_of_accounts}.to raise_error(NoMethodError)
    end 
    #interest rate has getter, not setter
    it "Raises error when user attempts to set interest rate" do
        expect{@account1.intrest_rate}.to raise_error(NoMethodError)
    end
end