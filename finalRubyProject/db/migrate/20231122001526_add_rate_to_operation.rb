class AddRateToOperation < ActiveRecord::Migration[5.2]
  def change
    add_column :operations, :rate, :float
  end
end
