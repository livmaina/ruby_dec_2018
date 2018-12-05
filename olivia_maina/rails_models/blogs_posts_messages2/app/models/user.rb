class User < ActiveRecord::Base
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_many :posts
    has_many :messages 
    has_many :owners
    has_many :blogs, through: :owners
    validates :first_name, :last_name, presence: true, length: {in: 2..20}
    validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }\
    has_many :comments, as: :comments
end
