class CreateOwnerProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :owner_properties do |t|
      t.string :key
      t.string :str_val
      t.float :num_val

      t.timestamps
    end
  end
end
