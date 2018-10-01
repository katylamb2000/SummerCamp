class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :set_camps, only: [:new, :edit]
  before_action :set_activities, only: [:new, :edit]

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
       @teacher = Teacher.new(teacher_params)
    if @teacher.valid?
       @teacher.save
      redirect_to @teacher
    else
      flash[:errors] = @teacher.errors.full_messages
      redirect_to new_activity_path
    end
  end

  def edit
  end

  def update
    @teacher.update(teacher_params)
    if @teacher.valid?
      redirect_to teacher_path(@teacher)
    else
      flash[:errors] = @teacher.errors.full_messages
      redirect_to edit_teacher_path
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teacher_url
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :username, :password, :camp_id)
  end

  def set_camps
    @camps = Camp.all.sort_by { |c| c.name }
  end

  def set_skills
    @skills = Skill.all.sort_by { |s| s.name }
  end
end
