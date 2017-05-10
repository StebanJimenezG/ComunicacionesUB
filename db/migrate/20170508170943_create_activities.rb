class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :nombre
      t.time :fecha_publicacion
      t.text :descripcion
      t.integer :id_type_fs

      t.timestamps null: false
    end
  end
end
