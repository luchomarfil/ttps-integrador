class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.belongs_to :gender, index: true
      t.string :cuil_cuit, null: false
      t.integer :dni,      null: false
      t.string :name,    null: false
      t.string :surname,  null: false
      t.date   :birth_date
      t.timestamps null: false
    end
  end

end
