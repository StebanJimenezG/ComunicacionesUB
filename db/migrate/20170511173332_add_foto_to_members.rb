class AddFotoToMembers < ActiveRecord::Migration
  def change
    add_attachment :members, :foto
  end
end
