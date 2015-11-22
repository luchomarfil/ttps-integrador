class Client < ActiveRecord::Base
  has_many :bills, dependent: :destroy, inverse_of: :person
end
