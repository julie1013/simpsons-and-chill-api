class PlaylistsController < ProtectedController
  before_action :set_playlist, only: [:update, :destroy]

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists = current_user.playlists

    render json: @playlists
  end
  # # trying to figure out how to get current_user to work
  # GET /playlists/1
  # GET /playlists/1.json
  # def show
  #   render json: @playlist
  # end
  #
  # POST /playlists
  # POST /playlists.json
  def create
    @playlist = current_user.playlists.build(playlist_params)

    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end
  # #
  # def create
  #   episode = playlist_params[:episode].to_i
  #   if !current_user.episode.include? episode
  #     @playlist = Playlist.new playlist_params
  #     @playlist.user = current_user
  #
  #     if @playlist.save
  #       render json: @playlist.to_json(include: :episode),
  #              status: :created,
  #              location: @playlist
  #     else
  #       render json: @playlist.errors, status: :unprocessable_entity
  #     end
  #   else
  #     head :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    if @playlist.update(playlist_params)
      head :no_content
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist.destroy

    head :no_content
  end

  private

  def set_playlist
    @playlist = current_user.playlists.find(params[:id])
  end

  def playlist_params
    params.require(:playlist).permit(:user_id, :episode_id, :rating)
  end
end
