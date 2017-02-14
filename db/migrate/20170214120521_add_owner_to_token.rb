class AddOwnerToToken < ActiveRecord::Migration[5.0]
  def change
    add_column :tokens, :token, :string
    add_reference :tokens, :owner, foreign_key: true
  end
end
