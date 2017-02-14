class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :sessionKey
      t.string :accessToken
      t.string :refreshToken
      t.string :scope

      t.timestamps
    end
  end
end
