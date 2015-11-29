require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def create_client
      Client.create!(cuil_cuit:"20305759482",dni:30575948,name:"Luciano",surname:"Marfil",telephone:"4214554",email:"luchomarfil@gmail.com",gender_id:1,birth_date:"2010-01-01")
  end

end
