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

    redirect_to "/"
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end

  def shorten_url(url_to_shorten)

  end

end
