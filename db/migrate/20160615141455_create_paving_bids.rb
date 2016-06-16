class CreatePavingBids < ActiveRecord::Migration
  def change
    create_table :paving_bids do |t|
	
	t.integer :jobID
	t.string :jobName

	t.string :jobAddress
        t.string :contactName
        t.integer :contactPhone
        t.string :contactAddress
        t.date :bidDate

        t.boolean :tax
        t.decimal :taxRate

        t.integer :squareFeet

        t.decimal :garitySYrate
        t.decimal :damicoReclaimTime
        t.decimal :damicoReclaimCost

        t.decimal :gradeCompactSFrate

        t.decimal :inClassTwo
        t.decimal :classTwoCost
        t.decimal :inClassOne
        t.decimal :classOneCost
        t.decimal :inLeveling
        t.decimal :levelingCost
        t.decimal :inProcess
        t.decimal :processCost

        t.integer :tonsBasePerDay
        t.integer :costBasePerDay

        t.integer :tonsPavePerDay
        t.integer :costPavePerDay

        t.integer :numRentalTrucks
        t.decimal :rentalTruckCost
        t.decimal :truckDays


      t.timestamps null: false
    end
  end
end





