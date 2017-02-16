class CreateServiceProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :service_properties do |t|
      t.string :key
      t.string :key2
      t.text :strVal
      t.float :numVal
      t.text :comment

      t.timestamps
    end
  end
end
