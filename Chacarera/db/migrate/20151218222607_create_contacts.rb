class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :value
      t.string :type
      t.belongs_to :client, index: true
      t.timestamps null: false
    end
  end
end
