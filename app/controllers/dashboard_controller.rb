class DashboardController < ApplicationController
  # GET /
  # The default dashboard
  def index
    repond_to do |format|
    format.mobile {}
  end
end
