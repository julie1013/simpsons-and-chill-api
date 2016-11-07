class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all

    render json: @episodes
  end
end
