class UrlsController < ApplicationController
  def index
  end

  def new 
    @url = Url.new
  end

  def create
    @url = Url.new
  end

end
