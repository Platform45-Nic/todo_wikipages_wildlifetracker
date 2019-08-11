class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :website
      t.integer :operating_hours
      t.references :business_type, foreign_key: { to_table: :business_types}

      t.timestamps
    end
  end
end
