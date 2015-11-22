class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.boolean :juridica
      t.string :nombre null: false
      t.string :cuil_cuit  null:false
      t.timestamps null: false
    end
  end
end
