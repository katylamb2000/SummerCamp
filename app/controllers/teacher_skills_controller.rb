class TeacherSkillsController < ApplicationController
  def index
    @teacherskills = Teacherskill.all
  end


  def new
    @teacherskill = Teacherskill.new
  end
end
