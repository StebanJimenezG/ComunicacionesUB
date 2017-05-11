class CreateActivityTypeFs < ActiveRecord::Migration
  def change
    create_table :activity_type_fs do |t|
      t.integer :id_activity
      t.integer :id_type_f

      t.timestamps null: false
    end
  end
end
