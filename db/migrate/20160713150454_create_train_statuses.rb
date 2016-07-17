class CreateTrainStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :train_statuses do |t|
      t.references :rpi, foreign_key: true
      t.references :train, foreign_key: true
      t.string :major
      t.string :minor
      t.integer :measured_power
      t.integer :rssi
      t.float :accuracy
      t.string :proximity

      t.timestamps
    end
  end
end
