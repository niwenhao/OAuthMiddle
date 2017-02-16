class AddKey2ToOwnerProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :owner_properties, :key2, :string
  end
end
