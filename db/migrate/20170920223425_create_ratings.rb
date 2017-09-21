class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :ratable_id
      t.string :ratable_type
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end
