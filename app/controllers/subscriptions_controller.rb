class SubscriptionsController < ApplicationController

  def index
    @offer = Offer.find_by_id([:id].to_s)
    @subscriptions = @offer.subscriptions
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offers }
    end
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    @subscription = Subscription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offer }
    end
  end

  # GET /offers/new
  # GET /offers/new.json
  def new
    @offer = Offer.find(params[:offer_id])
    @subscription = Subscription.new
  
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offer }
    end
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.find(params[:offer_id])
    @subscription = @offer.subscriptions.create(params[:subscription])
    respond_to do |format|
      if @subscription.save
        format.html { redirect_to thanks_offer_path(@offer), notice: 'Offer was successfully created.' }
        format.json { render json: @offer, status: :created, location: @offer }
      else
        format.html { render action: "new" }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /offers/1
  # PUT /offers/1.json
  def update
    @subscription = Subscription.find(params[:id])

    respond_to do |format|
      if @offer.update_attributes(params[:offer])
        format.html { redirect_to root_path, notice: 'Offer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy

    respond_to do |format|
      format.html { redirect_to user_root_path }
      format.json { head :ok }
    end
  end
  
  
end