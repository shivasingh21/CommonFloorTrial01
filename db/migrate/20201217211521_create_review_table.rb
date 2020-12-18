class CreateReviewTable < ActiveRecord::Migration[6.0]
  def change
    create_table :review_tables do |t|
      def change
        create_table :reviews do |t|
          t.integer :rating
          t.text :body
          t.references :property, null: false, foreign_key: true
          t.references :user, foreign_key: true

          t.timestamps
        end
      end
    end
  end
end
