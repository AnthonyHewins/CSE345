class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.integer :university_id
      t.string :fname
      t.string :lname

      t.timestamps
    end
  end
end
