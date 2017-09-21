class RemoveTrustedColumnFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :trusted?
  end
end
