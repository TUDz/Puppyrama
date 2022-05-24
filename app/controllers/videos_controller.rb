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
    @video = Video.find(params[:id])
    @actual_description = @video.description
    @video.description = ""
  end

  def update
    puts "Update method is called!!!"
    unless params[:video][:description].empty?
      video = Video.find params[:id]
      video.description = params[:video][:description]
      video.save!

      redirect_to videos_path
    end
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

  def destroy
    puts "Destroy method called!"
    @video = Video.find params[:id]
    @video.delete

    redirect_to videos_path
  end

  private
  def video_params
  end
end
