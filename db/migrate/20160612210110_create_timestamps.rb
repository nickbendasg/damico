class CreateTimestamps < ActiveRecord::Migration
  def change
    create_table :timestamps do |t|
      t.datetime :clock
      t.boolean :working
      t.text :status
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
