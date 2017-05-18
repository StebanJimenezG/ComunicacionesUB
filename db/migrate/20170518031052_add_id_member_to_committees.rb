class AddIdMemberToCommittees < ActiveRecord::Migration
  def change
    add_column :committees, :member_id, :integer
  end
end
