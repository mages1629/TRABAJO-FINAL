class CreateArticulos < ActiveRecord::Migration[7.2]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido
      t.integer :usuario_id
      t.integer :categoria_id
      t.date :fecha_creacion
      t.boolean :publicado

      t.timestamps
    end
  end
end
