class RemoveIdActivityFromCommittees < ActiveRecord::Migration
  def change
    remove_column :committees, :id_activity, :integer
  end
end
