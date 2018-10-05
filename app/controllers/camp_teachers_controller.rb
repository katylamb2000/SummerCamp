class CampTeachersController < ApplicationController



  def index
    @campteacher = CampTeacher.find(params[:id])
  end


  def show
    @campteacher = CampTeacher.find(params[:id])
  end



  def create
       @campteacher = CampTeacher.new(camp_teacher_params)
    if @campteacher.valid?
       @campteacher.save
      redirect_to @campteacher
    else
      flash[:errors] = @campteacher.errors.full_messages
      redirect_to students_path
    end
  end

  def camp_teacher_params
    params.require(:camp_teacher).permit(:camp_id, :teacher_id)
  end

end
