class StudentActivitiesController < ApplicationController

  def index
    @studentactivities = Studentactivity.all
  end

  def new
    @studentactivity = Studentactivity.new
  end
end
