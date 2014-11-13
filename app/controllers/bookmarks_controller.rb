class BookmarksController < ApplicationController
  before_filter :set_bookmark, only: [:show, :edit, :update, :destroy]

  respond_to :html, :xml, :json

  def index
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
    @bookmark = Bookmark.new(user_id: current_user.id, article_id: params[:bookmark][:article_id], is_bookmarked: true)
    # @bookmark.user_id = current_user.id
    @bookmark.save
    @bookmark_id = @bookmark.id
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