class Client < ActiveRecord::Base
  has_many :bills, dependent: :destroy
  belongs_to :gender

  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :cuil_cuit, presence: true, numericality: { only_integer: true }, length: { in: 9..11 }
  validates :dni, presence: true, numericality: { only_integer: true }, length: { in: 6..9 }
  validates :gender, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,message: "enter valid email address" }
  validates :fecha_nacimiento, not_in_future: true

end
