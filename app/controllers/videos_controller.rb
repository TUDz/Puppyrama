class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
    @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
  end

  def edit
  end



  def create
    video = Video.new
    video.title = params[:video][:title]
    video.description = params[:video][:description]
    video.visible = params[:video][:visible]
    video.duration = params[:video][:duration]
    video.url = params[:video][:url]

    video.save
    redirect_to videos_path
  end

  private
  def video_params
    param.s
  end
end
