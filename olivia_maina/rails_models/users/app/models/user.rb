class User < ActiveRecord::Base
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :first_name, :last_name, presence: true, length: {in: 2..20}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: EMAIL_REGEX}
    validates_numericality_of :age, presence: true, greater_than:10, less_than: 150
    # creating a custom instance method. self refers to the ActiveRecord object
    def full_name
        "#{self.first_name} #{self.last_name}"
        # can got to rails console and type command "user = User.first" => "user.full_name"
    end
    # creating a custom class method. self refers to the User model
    def self.average_age
        self.sum(:age) / self.count
        # can go to rails console and type command "User.average_age"
    end
        # ... omitted callback code for brevitycopy
end