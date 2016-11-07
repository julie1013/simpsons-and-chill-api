class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :update]
  def index
    @episodes = Episode.all

    render json: @episodes
  end

  def show
    render json: Episode.find(params[:id])
  end

  def update
    if @episode.update(episode_params)
      head :no_content
    else
      render json: @episode.errors, status: :unprocessable_entity
    end
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:title)
  end
end
