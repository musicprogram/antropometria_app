class RemoveStringFromMeasurement < ActiveRecord::Migration[5.1]
  def change
    remove_column :measurements, :string, :string
  end
end
