class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :nombre
      t.timestamps null: false
    end
    add_index :generos, :nombre
  end
end
