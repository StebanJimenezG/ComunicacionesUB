class DropTable < ActiveRecord::Migration
  def change
    drop_table :membercommittees
  end
end
