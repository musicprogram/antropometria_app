class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.float :bust
      t.float :waist
      t.float :hip

      t.timestamps
    end
  end
end
