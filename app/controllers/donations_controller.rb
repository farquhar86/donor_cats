class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
  	

  end
    def create
        donation_params = params.require(:donation).permit(:amount)
        byebug
	    @donation = Donation.new(user_params)
	    @donation.save
	    redirect_to root_path
	    
	end
end
