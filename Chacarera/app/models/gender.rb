class Gender < ActiveRecord::Base
  has_many :clients

  def to_s
     name
  end

end
