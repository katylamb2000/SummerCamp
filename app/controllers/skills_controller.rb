class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  before_action :set_teachers, only: [:new, :edit, :show]
  before_action :set_skill_categories, only: [:new, :create]

  def index
    @skills = Skill.all
  end

  def show
  end

  def new
    @skill = Skill.new

  end

  def create
       @skill = Skill.new(skill_params)
    if @skill.valid?
       @skill.save
      redirect_to @skill
    else
      flash[:errors] = @skill.errors.full_messages
      redirect_to new_activity_path
    end
  end

  def edit
  end

  def update
    @skill.update(skill_params)
    if @skill.valid?
      redirect_to skill_path(@skill)
    else
      flash[:errors] = @skill.errors.full_messages
      redirect_to edit_skill_path
    end
  end

  def destroy
    @skill.destroy
    redirect_to songs_url
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name, :category)
  end

  def set_teachers
    @teachers = Teacher.all.sort_by { |t| t.name }
  end

  def set_skill_categories
    @skill_categories = Skill.all
  end

end
