class Bill < ActiveRecord::Base
  belongs_to :person
  belongs_to :client

  validates :concept, presence: true
  validates :amount, presence: true, numericality: {greater_than:0}
  validates :client, presence: true
  validates :person, presence: true
  validates :invoice_date, not_in_future: true

end
