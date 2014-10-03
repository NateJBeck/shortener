class UrlsController < ApplicationController
  def index
  end

  def new 
    @url = Url.new
  end

  def create
    @url = Url.new
    @new_url = shorten_url

    redirect_to "/"
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end

  def shorten_url
    @url 
  end

end
