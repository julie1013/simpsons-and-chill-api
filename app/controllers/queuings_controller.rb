class QueuingsController < ApplicationController
  before_action :set_queuing, only: [:show, :update, :destroy]

  # GET /queuings
  # GET /queuings.json
  def index
    @queuings = Queuing.all

    render json: @queuings
  end

  # GET /queuings/1
  # GET /queuings/1.json
  def show
    render json: @queuing
  end

  # POST /queuings
  # POST /queuings.json
  def create
    @queuing = Queuing.new(queuing_params)

    if @queuing.save
      render json: @queuing, status: :created, location: @queuing
    else
      render json: @queuing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /queuings/1
  # PATCH/PUT /queuings/1.json
  def update
    @queuing = Queuing.find(params[:id])

    if @queuing.update(queuing_params)
      head :no_content
    else
      render json: @queuing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /queuings/1
  # DELETE /queuings/1.json
  def destroy
    @queuing.destroy

    head :no_content
  end

  private

    def set_queuing
      @queuing = Queuing.find(params[:id])
    end

    def queuing_params
      params.require(:queuing).permit(:playlist_id, :episode_id)
    end
end
