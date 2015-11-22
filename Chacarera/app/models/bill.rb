class Bill < ActiveRecord::Base
  belongs_to :person, inverse_of: :bills
  belongs_to :client, inverse_of: :bills
end
