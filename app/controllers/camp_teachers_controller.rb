class CampteachersController < ApplicationController

  # before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @campteacher = CampTeacher.find(params[:id])
  end

  def new
    @campskill = Campskill.new
  end

  # def set_camp_teacher_params
  #   params.require(:camp_teacher).permit(:camp_id, :teacher_id)
  # end

end
