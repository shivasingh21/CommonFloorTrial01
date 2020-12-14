class AddColumnstoProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :city, :string
    add_column :properties, :property_status, :string
    add_column :properties, :approved_status, :boolean, default: false
  end
end
