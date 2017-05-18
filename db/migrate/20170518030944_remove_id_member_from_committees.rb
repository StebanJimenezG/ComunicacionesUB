class RemoveIdMemberFromCommittees < ActiveRecord::Migration
  def change
    remove_column :committees, :id_member, :integer

  end
end
