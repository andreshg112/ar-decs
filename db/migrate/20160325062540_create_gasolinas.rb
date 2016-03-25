class CreateGasolinas < ActiveRecord::Migration
  def change
    create_table :gasolinas do |t|
      t.string :clase
      t.integer :galones_gravado
      t.integer :precio_referencia
      t.integer :porcentaje_alcohol
      t.integer :base_gravable
      t.integer :sobretasa
      t.references :declaracion
      t.timestamps null: false
    end
  end
end
