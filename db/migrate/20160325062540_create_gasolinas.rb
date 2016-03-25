class CreateGasolinas < ActiveRecord::Migration
  def change
    create_table :gasolinas do |t|
      t.string :clase
      t.float :galones_gravado
      t.float :precio_referencia
      t.float :porcentaje_alcohol
      t.float :base_gravable
      t.float :sobretasa
      t.references :declaracion
      t.timestamps null: false
    end
  end
end
