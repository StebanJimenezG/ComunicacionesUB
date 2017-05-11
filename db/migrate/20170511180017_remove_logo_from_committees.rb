class RemoveLogoFromCommittees < ActiveRecord::Migration
  def change
    remove_column :committees, :logo, :binary
  end
end
