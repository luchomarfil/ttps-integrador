class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.belongs_to :gender, index: true
      t.string :cuil_cuit, null: false
      t.integer :dni,      null: false
      t.string :nombre,    null: false
      t.string :apellido,  null: false
      t.datetime :fecha_nacimiento
      t.string :telefono,  null: false
      t.string :email,     null: false
      t.string :skype
      t.timestamps null: false
    end
  end

end
