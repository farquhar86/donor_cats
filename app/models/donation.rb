class Donation < ActiveRecord::Base
	belongs_to :users
	belongs_to :charties
end
