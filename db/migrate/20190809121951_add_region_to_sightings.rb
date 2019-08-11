class AddRegionToSightings < ActiveRecord::Migration[5.1]
  def change
    add_reference :sightings, :region, foreign_key: { to_table: :regions}
  end
end
