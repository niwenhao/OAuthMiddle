class AddServiceToServiceProperty < ActiveRecord::Migration[5.0]
  def change
    add_reference :service_properties, :service, foreign_key: true
  end
end
