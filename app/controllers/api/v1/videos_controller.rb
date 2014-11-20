class Api::V1::VideosController < ApplicationController
  # GET /api/v1/videos
  # GET /api/v1/videos.json
  def index
    @api_v1_videos = Api::V1::Video.all

    render json: @api_v1_videos
  end

  # GET /api/v1/videos/1
  # GET /api/v1/videos/1.json
  def show
    @api_v1_video = Api::V1::Video.find(params[:id])

    render json: @api_v1_video
  end

  # POST /api/v1/videos
  # POST /api/v1/videos.json
  def create
    @api_v1_video = Api::V1::Video.new(api_v1_video_params)

    if @api_v1_video.save
      render json: @api_v1_video, status: :created, location: @api_v1_video
    else
      render json: @api_v1_video.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/videos/1
  # PATCH/PUT /api/v1/videos/1.json
  def update
    @api_v1_video = Api::V1::Video.find(params[:id])

    if @api_v1_video.update(api_v1_video_params)
      head :no_content
    else
      render json: @api_v1_video.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/videos/1
  # DELETE /api/v1/videos/1.json
  def destroy
    @api_v1_video = Api::V1::Video.find(params[:id])
    @api_v1_video.destroy

    head :no_content
  end

  private
    
    def api_v1_video_params
      params.require(:api_v1_video).permit(:title, :description, :series, :thumbnail, :speaker, :service)
    end
end
