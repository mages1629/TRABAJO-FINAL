class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.string :descripcion
      t.boolean :estatus
      t.date :fecha_creacion
      t.integer :autor_id
      t.string :slug

      t.timestamps
    end
  end
end
