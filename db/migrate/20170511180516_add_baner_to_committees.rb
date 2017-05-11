class AddBanerToCommittees < ActiveRecord::Migration
  def change
    add_attachment :committees, :baner
  end
end
