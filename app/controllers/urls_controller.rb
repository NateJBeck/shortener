class UrlsController < ApplicationController
  def index
    @url = Url.all
  end

  def new 
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.save
    @url.update(shorter: @url.id)

    redirect_to url_path(@url)
  end

  def show_original
    @url = Url.find(params[:id])
  end

  def show
    url = Url.find(params[:id])
    redirect_to url.original
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end

  def shorten_url(url_to_shorten)

  end

end
