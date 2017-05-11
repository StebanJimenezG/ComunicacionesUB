class AddIdCommiteeToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :id_committee, :integer
  end
end
