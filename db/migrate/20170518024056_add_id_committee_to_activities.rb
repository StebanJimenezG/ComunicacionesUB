class AddIdCommitteeToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :committee_id, :integer
  end
end
