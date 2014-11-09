class ArticlesController < ApplicationController
  before_filter :set_article, only: [:show, :edit, :update, :destroy]

  respond_to :html, :xml, :json

  def index
    @articles = Article.all
    respond_with(@articles)
  end

  def show
    respond_with(@article)
  end

  def new
    @article = Article.new
    respond_with(@article)
  end

  def edit
  end

  def self.update_from_feed(feed_url, id)  
      feed = Feedjira::Feed.fetch_and_parse(feed_url)
      @feed_id = id  
      feed.entries.each do |entry|  
        unless exists? :entry_id => entry.id  
          create!(  
            :title         => entry.title,  
            :summary      => entry.summary,  
            :url          => entry.url,  
            :published => entry.published,  
            :entry_id         => entry.id,
            :feed_id => @feed_id
          )  
        end  
      end  
    end

  def create
    @article = Article.new(params[:article])
    @article.save
    respond_with(@article)
  end

  def update
    @article.update_attributes(params[:article])
    respond_with(@article)
  end

  def destroy
    @article.destroy
    respond_with(@article)
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end
end
