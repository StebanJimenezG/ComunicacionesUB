class CreateTypeFs < ActiveRecord::Migration
  def change
    create_table :type_fs do |t|
      t.binary :file

      t.timestamps null: false
    end
  end
end
