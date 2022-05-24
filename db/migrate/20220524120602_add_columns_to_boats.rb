class AddColumnsToBoats < ActiveRecord::Migration[6.1]
  def change
    add_column :boats, :category, :string
    add_column :boats, :description, :string
    add_column :boats, :capacity, :integer
  end
end
