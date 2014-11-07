class SubscriptionsController < ApplicationController
  before_filter :set_subscription, only: [:show, :edit, :update, :destroy]

  def index
    @subscriptions = Subscription.all
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
    @subscription = Subscription.new(params[:subscription])
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
