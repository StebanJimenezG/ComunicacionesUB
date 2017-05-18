class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :email
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
