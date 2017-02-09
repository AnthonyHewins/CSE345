class AddActiveToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :active, :boolean
  end
end
