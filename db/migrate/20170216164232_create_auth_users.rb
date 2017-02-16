class CreateAuthUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :auth_users do |t|
      t.string :userid
      t.string :passwd
      t.string :name
      t.string :mail
      t.text :address

      t.timestamps
    end
  end
end
