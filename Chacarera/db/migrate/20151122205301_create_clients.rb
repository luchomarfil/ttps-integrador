class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.belongs_to :gender, index: true
      t.string :cuil_cuit, null: false
      t.integer :dni,      null: false
      t.string :name,    null: false
      t.string :surname,  null: false
      t.datetime :birth_date
      t.string :telephone,  null: false
      t.string :email,     null: false
      t.string :skype
      t.timestamps null: false
    end
  end

end
