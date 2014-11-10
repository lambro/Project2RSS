class FeedsController < ApplicationController
  before_filter :set_feed, only: [:show, :edit, :update, :destroy]
  require "feedjira"
  respond_to :html, :xml, :json

  def index
    @feeds = Feed.all
    respond_with(@feeds)
  end

  def show
    @articles = @feed.articles
    respond_with(@feed)
  end

  def new
    @feed = Feed.new
    respond_with(@feed)
  end

  def edit
  end

  def create
    @feed = Feed.new
    @url = Feedjira::Feed.fetch_and_parse(params[:feed]['url'])
    @feed.title = @url.title
    @feed.url = @url.url
    @feed.summary = @url.summary
      @feed.save
      respond_with(@feed)
  end

  def update
    @feed.update_attributes(params[:feed])
    respond_with(@feed)
  end

  def destroy
    @feed.destroy
    respond_with(@feed)
  end

  private
    def set_feed
      @feed = Feed.find(params[:id])
    end
end
