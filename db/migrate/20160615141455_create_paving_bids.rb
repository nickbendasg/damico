class CreatePavingBids < ActiveRecord::Migration
  def change
    create_table :paving_bids do |t|
	
	t.integer :jobID
	t.string :jobName
	
      t.timestamps null: false
    end
  end
end
