class LeadsController < ApplicationController
  def index
    # @leads = Lead.all
    parameters = { term: 'food', limit: 2 }
    @response = Yelp.client.search('Boston', parameters)
  end
end
