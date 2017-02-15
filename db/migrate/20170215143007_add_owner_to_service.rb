class AddOwnerToService < ActiveRecord::Migration[5.0]
  def change
    add_reference :services, :owner, foreign_key: true
  end
end
