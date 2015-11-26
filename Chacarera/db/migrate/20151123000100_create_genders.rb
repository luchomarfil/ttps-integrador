class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :nombre
      t.timestamps null: false
    end
    add_index :genders, :nombre
  end
end
