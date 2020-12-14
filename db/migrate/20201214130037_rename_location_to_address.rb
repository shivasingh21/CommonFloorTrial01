class RenameLocationToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :properties, :Location, :address
  end
end
