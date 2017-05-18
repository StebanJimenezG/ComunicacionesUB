class DropCommitteeMember < ActiveRecord::Migration
  def change
    drop_table :committeemembers
  end
end
