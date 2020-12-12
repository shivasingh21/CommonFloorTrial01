class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :PropertyType
      t.string :Location
      t.float :Price
      t.float :Area
      t.string :OwnerName
      t.string :ContactPerson
      t.integer :Number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
