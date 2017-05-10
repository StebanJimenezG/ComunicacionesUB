class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.text :nombre
      t.text :correo
      t.integer :telefono
      t.text :descripcion
      t.binary :foto

      t.timestamps null: false
    end
  end
end
