class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.string :name
      t.string :uuid
      t.float :lat
      t.float :lng
      t.timestamps
    end
  end
end
