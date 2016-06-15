module PavingBidsHelper

def paving_bid_params
	params.require(:paving_bid).permit(:jobName, :jobID )
end


end
