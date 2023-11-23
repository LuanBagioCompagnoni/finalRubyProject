class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.integer :clientOrigin
      t.integer :clientDestination
      t.integer :agency
      t.float :value

      t.timestamps
    end
  end
end
