class CreateScopes < ActiveRecord::Migration[5.0]
  def change
    create_table :scopes do |t|
      t.string :name

      t.timestamps
    end
  end
end
