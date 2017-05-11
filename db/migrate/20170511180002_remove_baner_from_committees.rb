class RemoveBanerFromCommittees < ActiveRecord::Migration
  def change
    remove_column :committees, :baner, :binary
  end
end
