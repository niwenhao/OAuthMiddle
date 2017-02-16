class AddCommentToOwnerProperty < ActiveRecord::Migration[5.0]
  def change
    add_column :owner_properties, :comment, :text
  end
end
