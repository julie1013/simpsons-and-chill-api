class EpisodesController < ApplicationController
  before_action :set_episode, only: [:show, :create, :update, :destroy]

  def index
    @episodes = Episode.all

    render json: @episodes
  end

  def create
    @episode = Episode.new(episode_params)

    if @episode.save
      render json: @episode, status: :created, location: @episode
    else
      render json: @episode.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: Episode.find(params[:id])
  end

  def update
    if @episode.update(episode_params)
    else
      render json: @episode.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @episode.destroy

    head :no_content
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:title)
  end
end
