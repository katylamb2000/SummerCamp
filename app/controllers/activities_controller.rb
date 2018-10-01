class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_teachers, only: [:new, :edit]
  before_action :set_camps, only: [:new, :edit]
  before_action :set_skills, only: [:new, :edit]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
       @activity = Activity.new(activity_params)
    if @activity.valid?
       @activity.save
      redirect_to @activity
    else
      flash[:errors] = @activity.errors.full_messages
      redirect_to new_activity_path
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    if @activity.valid?
      redirect_to activity_path(@activity)
    else
      flash[:errors] = @activity.errors.full_messages
      redirect_to edit_activity_path
    end
  end

  def destroy
    @activity.destroy
    redirect_to songs_url
  end

  private

  def set_post
    @activity = Activity.find(params[:id])
  end

  def set_teachers
    @teachers = Teacher.all.sort_by { |t| t.name }
  end

  def set_camps
    @camps = Camp.all.sort_by { |c| c.name }
  end

  def set_skills
    @skills = Skill.all.sort_by { |s| s.name }
  end

  def activity_params
    params.require(:activity).permit(:teacher_id, :camp_id, :skill_id, :date)
  end
end
