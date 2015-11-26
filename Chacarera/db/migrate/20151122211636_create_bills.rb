class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.belongs_to :client, index: true
      t.belongs_to :person, index:true
      t.string :concepto
      t.float :monto
      t.datetime :fecha_emision

      t.timestamps null: false
    end
  end
end
