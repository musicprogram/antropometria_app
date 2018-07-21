class AddCedulaToMeasurement < ActiveRecord::Migration[5.1]
  def change
    add_column :measurements, :cedula, :string
    add_column :measurements, :birthdate, :date
    add_column :measurements, :residence, :string
    add_column :measurements, :age, :integer
  end
end
