class CreateAuthProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :auth_properties do |t|
      t.string :key
      t.text :txtValue
      t.float :numValue
      t.belongs_to :token

      t.timestamps
    end
  end
end
