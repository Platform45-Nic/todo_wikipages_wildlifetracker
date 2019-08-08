class CreateBussinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :bussinesses do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :website
      t.integer :operating_hours
      t.references :bussiness_type, foreign_key: { to_table: :bussiness_types}

      t.timestamps
    end
  end
end
