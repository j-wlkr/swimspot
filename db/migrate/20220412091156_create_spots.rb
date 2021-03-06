class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.float :latitude
      t.float :longitude
      t.text :description
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
