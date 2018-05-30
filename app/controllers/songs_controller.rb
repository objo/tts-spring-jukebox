class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params["id"])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)

    if @song.persisted?
      redirect_to songs_path
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params["id"])
  end

  def update
    @song = Song.find(params["id"])

    if @song.update(song_params)
      redirect_to songs_path
    else
      render 'edit'
    end
  end

  private

  def song_params
    params.require(:song).permit(:name, :duration)
  end

end
