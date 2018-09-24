class SessionsController < ApplicationController
  skip_before_action :authenticate_user

  def create
    req = FoursquareService.new
    req.authenticate!(ENV['FOURSQUARE_CLIENT_ID'], ENV['FOURSQUARE_SECRET'],
    params[:code])

    redirect_to root_path
  end
end
