class AddDocToActivities < ActiveRecord::Migration
  def change
    add_attachment :activities, :doc
  end
end
