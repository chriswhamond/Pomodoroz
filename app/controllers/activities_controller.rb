class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    redirect_to activities_path, notice: t("flash.activity_created")
  end
end
