class RemoveFotoFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :foto, :binary
  end
end
