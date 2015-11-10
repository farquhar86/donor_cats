class CharitiesController < ApplicationController
  def index
  	@charities = Charity.all.paginate(:page => params[:page], :per_page => 4)
  end
  def show
  	@charity = Charity.find(params[:id])
  end	
end
