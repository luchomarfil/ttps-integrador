require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  setup do
    @masculino = genders(:masculino)
  end

  test "create client" do
    assert_difference('Client.count') do
      Client.create!(cuil_cuit:"20305759482",dni:30575948,name:"Luciano",surname:"Marfil",telephone:"4214554",email:"luchomarfil@gmail.com",gender_id:@masculino.id,birth_date:"2010-01-01")
    end
  end

  test "create client without contact data should fail" do
      datos = {cuil_cuit:"20305759482",dni:30575948,name:"Luciano",surname:"Marfil",gender_id:@masculino.id,birth_date:"2010-01-01"}
      assert_raises(ActiveRecord::RecordInvalid) {Client.create!(datos)}
  end

  test "create client with dni without numbers should fail" do
      datos = {cuil_cuit:"ab0305759482",dni:"ac575948",name:"Luciano",surname:"Marfil",gender_id:@masculino.id,birth_date:"2010-01-01"}
      assert_raises(ActiveRecord::RecordInvalid) {Client.create!(datos)}
  end

  test "destroy client without bills" do
    @cliente_sin_facturas = clients(:cliente_sin_facturas)
    assert_difference('Client.count', -1) do
      Client.delete(@cliente_sin_facturas)
    end
  end

  test "destroy client with bills" do
    @cliente_con_facturas = clients(:cliente_con_facturas)
    @cantidad_facturas = @cliente_con_facturas.bills.size
    assert_difference('Client.count', -1) do
      assert_difference('Bill.count', @cantidad_facturas*-1) do
        @cliente_con_facturas.destroy
      end
    end
  end

end
