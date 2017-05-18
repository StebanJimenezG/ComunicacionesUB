class CreateCommitteemembers < ActiveRecord::Migration
  def change
    create_table :committeemembers do |t|
      t.integer :committee_id, :null => false
      t.integer :member_id, :null => false

      t.timestamps null: false
    end
  end
end
