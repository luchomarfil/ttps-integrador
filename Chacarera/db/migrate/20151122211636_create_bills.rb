class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.belongs_to :client, index: true
      t.belongs_to :person, index:true
      t.string :concept, null:false
      t.float :amount, null:false
      t.datetime :invoice_date, null:false

      t.timestamps null: false
    end
  end
end
