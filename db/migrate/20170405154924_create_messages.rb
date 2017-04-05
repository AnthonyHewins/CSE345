class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :post_id
      t.integer :sender
      t.integer :receiver
      t.text :message

      t.timestamps
    end
  end
end
