class AddCommitToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :comment, :text
  end
end
