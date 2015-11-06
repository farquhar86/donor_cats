class User < ActiveRecord::Base
	has_many :donations
	has_many :charties, :through => :donations
end
