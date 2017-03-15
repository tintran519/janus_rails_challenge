class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  def search
    parameters = { limit: 8 }
    @location = params[:query]
    if @location
      @response = Yelp.client.search(@location, parameters)
    end
  end

  def create
    @lead = Lead.new(params.permit(:name, :address, :phone, :latitude, :longitude))

    if @lead.save
      redirect_to leads_path
    end
  end
end
