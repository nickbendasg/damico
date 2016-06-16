module PavingBidsHelper

def paving_bid_params
	params.require(:paving_bid).permit(

:jobID, :jobName, :jobAddress,
:contactName, :contactPhone, :contactAddress,
:bidDate,
:tax, :taxRate,
:squareFeet,
:garitySYrate, :damicoReclaimTime, :damicoReclaimCost,
:gradeCompactSFrate,
:inClassTwo, :classTwoCost,
:inClassOne, :classOneCost,
:inLeveling, :levelingCost,
:inProcess, :processCost,
:tonsBasePerDay, :costBasePerDay,
:tonsPavePerDay, :costPavePerDay,
:numRentalTrucks, :rentalTruckCost, :truckDays )
end


end
