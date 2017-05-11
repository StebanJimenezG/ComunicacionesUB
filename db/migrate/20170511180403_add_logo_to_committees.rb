class AddLogoToCommittees < ActiveRecord::Migration
  def change
    add_attachment :committees, :logo
  end
end
