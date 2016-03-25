class IntegerAStringEnDeclaracion < ActiveRecord::Migration
  def up
    change_column :declaracions, :mes, :string
  end

  def down
    change_column :gasolinas, :mes, :integer
  end
end
