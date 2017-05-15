class CreateMembercommittees < ActiveRecord::Migration
  def change
    create_table :membercommittees do |t|
      t.integer :member_id, :null => false
      t.integer :committee_id , :null => false

      t.timestamps null: false
    end
  end
end
