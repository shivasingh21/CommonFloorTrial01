class ChaneNumberDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :properties, :Number, :string
  end
end
