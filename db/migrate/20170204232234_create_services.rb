class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.integer :student_id
      t.float :price
      t.text :description
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
