class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
	t.string :first
	t.string :last
	t.decimal :hrly_cost
	t.decimal :hrs_todate
		
	t.timestamps
    end
  end
end
