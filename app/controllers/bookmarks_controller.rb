class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmarks = Bookmarks.new
  end

  def create
    @list = List.find(params[:list_id])
  end

  def destroy
    @list = List.find(params[:list_id])
  end
end

private
