class CreateSightings < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |t|
      t.integer :amount_in_one_session
      t.date :date
      t.integer :latitude
      t.integer :longitude
      t.references :animal, foreign_key: { to_table: :animals}

      t.timestamps
    end
  end
end
