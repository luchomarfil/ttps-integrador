class Contact < ActiveRecord::Base
  belongs_to :client
  validates :value, presence: true
  TYPES = [Address, Cell, Email, Skype, Telephone]
end
