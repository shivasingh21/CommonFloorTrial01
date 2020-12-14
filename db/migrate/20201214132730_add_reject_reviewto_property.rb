class AddRejectReviewtoProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :rejection_reason, :string
  end
end
