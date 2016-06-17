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
		@paving_bid.taxRate = 1.0635
        @paving_bid.tax = 'true'

        sy = @paving_bid.squareFeet/9

        if sy < 3000

                @paving_bid.garitySYrate = 0.1
                @paving_bid.damicoReclaimTime = 0.5

        elsif sy < 5000

                @paving_bid.garitySYrate = 1
                @paving_bid.damicoReclaimTime = 1

        else
                @paving_bid.garitySYrate = 10
                @paving_bid.damicoReclaimTime = 10
        end

        @paving_bid.gradeCompactSFrate = 0.20
        @paving_bid.damicoReclaimCost = 6000
        @paving_bid.costBasePerDay = 6000
        @paving_bid.costPavePerDay = 6000
        @paving_bid.rentalTruckCost = 960
        @paving_bid.classTwoCost = 76
        @paving_bid.classOneCost = 70
        @paving_bid.processCost = 14
        @paving_bid.levelingCost = 80

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
