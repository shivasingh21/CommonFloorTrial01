class ChangeReviewBodyName < ActiveRecord::Migration[6.0]
  def change
        rename_column :reviews, :body, :comment
  end
end
