class AddServiceToScope < ActiveRecord::Migration[5.0]
  def change
    add_reference :scopes, :service, foreign_key: true
  end
end
