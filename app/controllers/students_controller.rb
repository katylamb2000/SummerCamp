class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_camps, only: [:new, :edit]
  before_action :set_activities, only: [:new, :edit]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
       @student = Student.new(student_params)
    if @student.valid?
       @student.save
      redirect_to @student
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_activity_path
    end
  end

  def edit
  end

  def update
    @student.update(student_params)
    if @student.valid?
      redirect_to student_path(@student)
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to edit_student_path
    end
  end

  def destroy
    @student.destroy
    redirect_to songs_url
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :username, :password, :camp_id)
  end

  def set_camps
    @camps = Camp.all.sort_by { |c| c.name }
  end

  def set_activities
    @activities = Activity.all.sort_by { |a| a.name }
  end
end
