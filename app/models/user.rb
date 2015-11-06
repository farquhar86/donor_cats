class User < ActiveRecord::Base

	has_many :donations
	has_many :charties, :through => :donations

	has_secure_password
	validates :email, presence: true, 
			  length: {minimum: 2},
			  uniqueness: true,
			  format: {with: /@/, message: "not valid email, try again loser"}
	validates :password, presence: true,
			  length: {minimum: 6}

	def full_name
		"#{first_name} #{last_name}"
	end

end

