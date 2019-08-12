class ChangeAnimalTypeToString < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :type, :string
    add_column :animals, :animal_type, :string
  end
end
