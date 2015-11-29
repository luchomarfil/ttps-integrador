class Client < ActiveRecord::Base
  has_many :bills, dependent: :destroy
  belongs_to :gender

  validates :name, presence: true
  validates :surname, presence: true
  validates :cuil_cuit, presence: true, numericality: { only_integer: true }, length: { in: 9..11 }
  validates :dni, presence: true, numericality: { only_integer: true }, length: { in: 6..9 }
  validates :gender, presence: true
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/,message: "enter valid email address" }
  validates :birth_date, not_in_future: true, presence: true

  def age
    today = Date.current
    edad = today.year - birth_date.year
    edad -= 1 if today.yday < birth_date.yday
    edad
  end


  def amount_by_year
      a = {}
      bills.order(:invoice_date).map{|b| a[b.invoice_date.year] = (a[b.invoice_date.year] || 0) + b.amount }
      a
  end

  def montly_this_year
    a = {}
    this_year = bills.order(:invoice_date).reject {|a| a.invoice_date.year != Date.today.year}
    this_year.map{|b| a[b.invoice_date.month] = (a[b.invoice_date.month] || 0) + 1 }
    a
  end

  def top_five_person
    top = bills.select(:person_id).group(:person_id).order("SUM(:amount)").limit(5)
    top.map {|b| b.person}
  end

  def to_s
    "#{surname} #{name}"
  end
end
