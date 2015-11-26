class Gender < ActiveRecord::Base
  has_many :people

  def to_s
     nombre
  end

end
