class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.integer :admin_id
      t.boolean :active
      t.string :attendees
      t.timestamps
    end
  end
end