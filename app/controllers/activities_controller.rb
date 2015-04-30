class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @activities = PublicActivity::Activity.order("created_at desc")

    respond_to do |format|
      format.html
      format.js
    end
  end
end
