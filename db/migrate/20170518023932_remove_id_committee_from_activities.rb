class RemoveIdCommitteeFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :id_committee, :integer
  end
end
