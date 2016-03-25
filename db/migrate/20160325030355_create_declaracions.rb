class CreateDeclaracions < ActiveRecord::Migration
  def change
    create_table :declaracions do |t|
      t.string :entidad_departamento
      t.string :entidad_codigo_dane
      t.string :entidad_nit
      t.string :entidad_dv
      t.string :calidad_declarante
      t.boolean :correccion_valor
      t.string :correccion_id
      t.date :correccion_fecha
      t.integer :anio
      t.integer :mes
      t.string :nombres
      t.string :tipo_documento
      t.string :numero_documento
      t.string :dv
      t.string :direccion
      t.string :departamento
      t.string :municipio
      t.string :telefono
      t.timestamps null: false
    end
  end
end
