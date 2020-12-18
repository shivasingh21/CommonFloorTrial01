class AddReviewsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.integer :property_id
      t.integer :user_id
    end
  end
end
