class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.text :nombre
      t.text :descripcion
      t.binary :baner
      t.binary :logo
      t.integer :id_activity
      t.integer :id_member

      t.timestamps null: false
    end
  end
end
