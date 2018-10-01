class CampSkillsController < ApplicationController

  def index
    @campskills = Campskill.all
  end
  
  def new
    @campskill = Campskill.new
  end

end
