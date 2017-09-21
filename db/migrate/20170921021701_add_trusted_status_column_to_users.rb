class AddTrustedStatusColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :trusted_status, :boolean
  end
end
