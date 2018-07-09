class AddMediaBodyToMeasurement < ActiveRecord::Migration[5.1]
  def change
    add_column :measurements, :media_body, :string
  end
end
