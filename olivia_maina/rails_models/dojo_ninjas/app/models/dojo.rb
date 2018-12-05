class Dojo < ActiveRecord::Base
    has_many :ninjas
    validates :name, :city, presence: true
    validates :state, presence: true, length:{is:2}
end


#How would you only retrieve the first_name of the ninjas that belong to the second dojo and order the 
#result by created_at DESC order?

    # Dojo.second.ninjas.select(:first_name).order(created_at: :desc)