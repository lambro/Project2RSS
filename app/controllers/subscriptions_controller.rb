class SubscriptionsController < ApplicationController
  before_filter :set_subscription, only: [:show, :edit, :update, :destroy]

  respond_to :html, :xml, :json
  
  def index
    respond_with(@subscriptions)
  end

  def show
    respond_with(@subscription)
  end

  def new
    @subscription = Subscription.new
    respond_with(@subscription)
  end

  def edit
  end

  def create
    @subscription = Subscription.new( params[:subscription])
    @subscription.user_id=current_user.id
    @subscription.save
    respond_with(@subscription)
  end

  def update
    @subscription.update_attributes(params[:subscription])
    respond_with(@subscription)
  end

  def destroy
    @subscription.destroy
    respond_with(@subscription)
  end

  private
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end
end
