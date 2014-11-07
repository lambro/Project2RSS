class BookmarksController < ApplicationController
  before_filter :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmarks = Bookmark.all
    respond_with(@bookmarks)
  end

  def show
    respond_with(@bookmark)
  end

  def new
    @bookmark = Bookmark.new
    respond_with(@bookmark)
  end

  def edit
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    @bookmark.save
    respond_with(@bookmark)
  end

  def update
    @bookmark.update_attributes(params[:bookmark])
    respond_with(@bookmark)
  end

  def destroy
    @bookmark.destroy
    respond_with(@bookmark)
  end

  private
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end
end
