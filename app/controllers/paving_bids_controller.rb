class PavingBidsController < ApplicationController
include PavingBidsHelper

def index 
	@paving_bids = PavingBid.all
end

def new
	@paving_bid = PavingBid.new
end

def show
	@paving_bid = PavingBid.find(params[:id])
end

def create
        @paving_bid = PavingBid.new(paving_bid_params)
        @paving_bid.save

        redirect_to paving_bid_path(@paving_bid)
end

def update
        @paving_bid = PavingBid.find(params[:id])
        @paving_bid.update(paving_bid_params)

        redirect_to paving_bid_path(@paving_bid)
end

def edit
	@paving_bid = PavingBid.find(params[:id])
end

end
