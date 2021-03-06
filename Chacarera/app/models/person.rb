class Person < ActiveRecord::Base
  has_many :bills, dependent: :destroy

  # t.boolean :legal
  # t.string :name ,null:false
  # t.string :cuil_cuit, null:false
  # t.timestamps null: false

  validates :name, presence: true
  validates :cuil_cuit, presence: true, numericality: { only_integer: true }, length: { in: 9..11 },  uniqueness: true

  def to_s
    "#{name}"
  end
end
