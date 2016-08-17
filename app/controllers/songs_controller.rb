class SongsController < ApplicationController

  def index
    @products = Product.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  # def index
  #   @songs = Song.all
  #   if params[:search]
  #     @songs = Song.search(params[:search]).order("created_at DESC")
  #   else
  #     @songs = Song.all.order('created_at DESC')
  #   end
  # end



end
