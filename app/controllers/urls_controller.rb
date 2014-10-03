class UrlsController < ApplicationController
  def index
    @url = Url.all
    @newest_url = Url.last
  end

  def new 
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    @url.save
    @url.update(shorter: @url.id)

    redirect_to root_path
  end

  def show_works
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
