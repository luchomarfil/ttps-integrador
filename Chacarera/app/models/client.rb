class Client < ActiveRecord::Base
  has_many :bills, dependent: :destroy
  has_many :contacts, dependent: :destroy
	accepts_nested_attributes_for :contacts, allow_destroy: true

  belongs_to :gender
  validates :contacts, presence: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :cuil_cuit, presence: true, numericality: { only_integer: true }, length: { in: 9..11 },  uniqueness: true
  validates :dni, presence: true, numericality: { only_integer: true }, length: { in: 6..9 },  uniqueness: true
  validates :gender, presence: true

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
    sum = {}
    this_year = bills.order(:invoice_date).reject {|a| a.invoice_date.year != Date.today.year}
    this_year.map{|b| sum[b.invoice_date.month] = (sum[b.invoice_date.month] || 0) + 1 }

    last_twelve = {}
    (1..12).each  { |month_number| last_twelve[month_number] = sum[month_number] || 0}

    last_twelve
  end

  def top_five_person
    top = bills.select(:person_id).group(:person_id).order("SUM(amount) desc").limit(5)
    top.map {|b| b.person}
  end

  def to_s
    "#{surname} #{name}"
  end
end
