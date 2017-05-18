class CreateComitemembers < ActiveRecord::Migration
  def change
    create_table :comitemembers do |t|
      t.integer :committee_id
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
