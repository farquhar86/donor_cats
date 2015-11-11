class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
  	

  end
  def create
      donation_params = params.require(:donation).permit(:amount)
	    @donation = Donation.new(donation_params)
	    @donation.save
      byebug
	    redirect_to donation_show_path(@donation)
	    
	end
end
