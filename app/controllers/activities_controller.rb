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
       @song = Song.new(song_params)
    if @song.valid?
       @song.save
      redirect_to @song
    else
      flash[:errors] = @song.errors.full_messages
      redirect_to new_song_path
    end
  end

  def edit
  end

  def update
    @song.update(song_params)
    if @song.valid?
      redirect_to song_path(@song)
    else
      flash[:errors] = @song.errors.full_messages
      redirect_to edit_song_path
    end
  end

  def destroy
    @song.destroy
    redirect_to songs_url
  end

  private

  def set_post
    @song = Song.find(params[:id])
  end

  def set_regions
    @regions = Region.all.sort_by { |r| r.name }
  end

  def set_cheeses
    @cheeses = Cheese.all.sort_by { |r| r.name }
  end

  def song_params
    params.require(:song).permit(:title, :release_year, :released, :genre, :artist_name)
  end
end
