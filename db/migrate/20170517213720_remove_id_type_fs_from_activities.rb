class RemoveIdTypeFsFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :id_type_fs, :integer
  end
end
