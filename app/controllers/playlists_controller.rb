class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show]
  def index
    @playlists = Playlist.all

    render json: @playlists
  end

  def create
    @playlists = current_user.playlists.build(params)

    if @playlists.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  private

  def set_playlist
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:first_episode, :second_episode,
                                     :third_episode, :fourth_episode,
                                     :fifth_episode, :sixth_episode)
  end
end
