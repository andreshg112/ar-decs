class IntegerAFloatEnGasolina < ActiveRecord::Migration
  def up
    change_column :gasolinas, :galones_gravado, :float
    change_column :gasolinas, :precio_referencia, :float
    change_column :gasolinas, :porcentaje_alcohol, :float
    change_column :gasolinas, :base_gravable, :float
    change_column :gasolinas, :sobretasa, :float
  end

  def down
    change_column :gasolinas, :galones_gravado, :integer
    change_column :gasolinas, :precio_referencia, :integer
    change_column :gasolinas, :porcentaje_alcohol, :integer
    change_column :gasolinas, :base_gravable, :integer
    change_column :gasolinas, :sobretasa, :integer
  end

end
