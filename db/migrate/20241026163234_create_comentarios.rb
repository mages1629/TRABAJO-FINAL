class CreateComentarios < ActiveRecord::Migration[7.2]
  def change
    create_table :comentarios do |t|
      t.text :contenido
      t.integer :usuario_id
      t.integer :articulo_id
      t.date :fecha
      t.boolean :status

      t.timestamps
    end
  end
end
