class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.references :destination_type, index: true
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :price
      t.string :hours
      t.string :phone
      t.string :website
      t.string :facebook
      t.string :heading
      t.string :subheading
      t.string :gpscoords

      t.timestamps null: false
    end
    add_foreign_key :destinations, :destination_types
  end
end
