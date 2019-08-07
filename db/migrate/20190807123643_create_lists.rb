class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :list_text
      t.references :task, foreign_key: { to_table: :tasks}

      t.timestamps
    end
  end
end
