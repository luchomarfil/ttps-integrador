class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :person, index:true
      t.timestamps null: false
    end
  end
end
