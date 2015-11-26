class Person < ActiveRecord::Base
  has_many :bills, dependent: :destroy
  # t.boolean :juridica
  # t.string :nombre ,null:false
  # t.string :cuil_cuit, null:false
  # t.timestamps null: false

  validates :nombre, presence: true
  validates :cuil_cuit, presence: true, numericality: { only_integer: true }, length: { in: 9..11 }


end
