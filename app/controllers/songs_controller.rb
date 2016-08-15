class SongsController < ApplicationController
  def index
    @songs = Song.all
    if params[:search]
      @songs = Song.search(params[:search]).order("created_at DESC")
    else
      @songs = Song.all.order('created_at DESC')
    end
  end
end
