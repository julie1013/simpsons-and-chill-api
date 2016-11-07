class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all

    render json: @episodes
  end

  def show
    render json: Episode.find(params[:id])
  end
end
