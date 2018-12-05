class Blog < ActiveRecord::Base
    has_many :posts
    has_many :owners
    has_many :users, through: :owners
    validates :name, :description, presence: true
    has_many :comments, as: :comments
end
