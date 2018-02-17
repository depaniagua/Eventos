class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :nombre
      t.string :categoria
      t.string :lugar
      t.string :direccion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :modalidad

      t.timestamps
    end
  end
end
