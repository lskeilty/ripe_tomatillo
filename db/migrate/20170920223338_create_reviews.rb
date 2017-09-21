class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :trusted_user_id
      t.integer :film_id

      t.timestamps
    end
  end
end
