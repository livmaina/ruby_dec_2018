class BankAccount
    @@number_of_accounts = 0
    
    attr_accessor :checking_account, :savings_account
    def initialize checking=0, savings=0
        @account_num = acc_num
        @checking_account = checking
        @savings_account = savings
        @interest_rate = 0.01
        @@number_of_accounts += 1
        puts "Number of accounts: #{@@number_of_accounts}"
        self
    end

    def display_acct_num
        puts "Account number: #{@account_num}"
        self
    end

    def check_bal
        "Checking account balance is: #{@checking_account}"
        # self
    end

    def savings_bal
        puts "Savings account: #{@savings_account}"
        self
    end

    def deposit acc='checking', num
        acc == 'checking' ? @checking_account += num : @savings_account += num
        puts "You've deposited to your account. Checking Account:#{@checking_account}"
        self
    end
    
    def withdraw acc, num
        acc == 'checking' ? 
            @checking_account>num ? @checking_account -= num : (raise 'Insufficient funds') :
            @savings_account>num ? @savings_account -= num : (raise 'Insufficient funds')
            puts "You've withdrawn from your account. New  Amount: #{@checking_account}"
        # self
    end

    def total
        total = @checking_account + @savings_account
        puts "Total amount: #{@checking_account + @savings_account}"
        total
        # self
    end

    def account_information
        display_acct_num
        total
        check_bal
        savings_bal
        puts "Your interest rate is #{@interest_rate}"
    end
    private
        def acc_num
            rand(100...999)
        end
end

user1 = BankAccount.new.deposit(200).withdraw('checking',30).account_information