class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
    @charity = Charity.find_by({id: params[:id]})

  end
  def show
    
  end 

  	

  def create
      if logged_in? == false
        @donation = Donation.new(donation_params)
        @donation.save
      elsif
  	    @donation = current_user.donations.new(donation_params)
  	    @donation.save
      end
	    redirect_to donation_show_path(@donation.id)
	end

  private
    def donation_params
      params.require(:donation).permit(:amount, :monthly_amount, :charity_id)
    end
end