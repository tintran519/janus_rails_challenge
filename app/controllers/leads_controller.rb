class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  def search
    parameters = { term: 'food', limit: 3 }
    @location = params[:query]
    if @location
      @response = Yelp.client.search(@location, parameters)
    end
  end
end
