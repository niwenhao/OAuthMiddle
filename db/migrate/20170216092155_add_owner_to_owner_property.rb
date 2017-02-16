class AddOwnerToOwnerProperty < ActiveRecord::Migration[5.0]
  def change
    add_reference :owner_properties, :owner, foreign_key: true
  end
end
