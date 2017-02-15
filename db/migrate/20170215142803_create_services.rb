class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :keyword
      t.string :url
      t.integer :callsummary
      t.datetime :summaryStart

      t.timestamps
    end
  end
end
