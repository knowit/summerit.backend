class CreateRpis < ActiveRecord::Migration[5.0]
  def change
    create_table :rpis do |t|
      t.string :uuid
      t.float :lat
      t.float :lng
      t.timestamps
    end
  end
end
