class CreateUsuarios < ActiveRecord::Migration[7.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :telefono
      t.date :fecha_registro
      t.boolean :status

      t.timestamps
    end
  end
end
