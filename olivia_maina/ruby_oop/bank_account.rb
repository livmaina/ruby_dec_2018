class BankAccount
    @@number_of_accounts = 0

    def initialize
        @account_num = acc_num
        @checking_account = 0
        @savings_account = 0
        @intrest_rate = 0.01
        @@number_of_accounts += 1
        puts "Number of accounts: #{@@number_of_accounts}"
        self
    end

    def display_acct_num
        puts "Account number: #{@account_num}"
        self
    end

    def check_bal
        puts "Checking account: #{@checking_account}"
        self
    end

    def savings_bal
        puts "Savings account: #{@savings_account}"
        self
    end

    def deposit acc='checking', num
        acc == 'checking' ? @checking_account += num : @savings_account += num
        self
    end
    
    def withdraw acc='checking', num
        acc == 'checking' ? 
            @checking_account>num ? @checking_account -= num : (puts 'Insufficient funds') : 
            @savings_account>num ? @savings_account -= num : (puts 'Insufficient funds')
        self
    end

    def total
        puts "Total amount: #{@checking_account + @savings_account}"
        self
    end

    def account_information
        display_acct_num
        total
        check_bal
        savings_bal
        puts "Your intrest rate is #{@intrest_rate}"
    end
    private
        def acc_num
            rand(100...999)
        end
end

user1 = BankAccount.new.deposit(200).withdraw(30).account_information