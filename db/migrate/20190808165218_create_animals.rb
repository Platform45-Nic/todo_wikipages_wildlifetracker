class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name, unique: true
      t.string :type

      t.timestamps
    end
  end
end
