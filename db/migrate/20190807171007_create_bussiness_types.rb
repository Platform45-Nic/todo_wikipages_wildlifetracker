class CreateBussinessTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :bussiness_types do |t|
      t.string :section

      t.timestamps
    end
  end
end
