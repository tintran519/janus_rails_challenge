class LeadsController < ApplicationController
  def index
    @leads = Lead.all
    @blah = Rails.application.secrets.YELP_TOKEN
  end
end
