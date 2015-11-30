require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @cliente_roberto = clients(:roberto)
    @persona_roberto = people(:persona_cliente_roberto)
  end
  # test "the truth" do
  #   assert true
  # end
  test "create bill" do
      assert_difference('Bill.count') do
        Bill.create!(client_id:@cliente_roberto.id,person_id:@persona_roberto.id,concept:"Venta 1",amount:100,invoice_date:"2015-11-20")
      end
  end

  test "create bill with negative amount should fail" do
      datos = {client_id:@cliente_roberto.id,person_id:@persona_roberto.id,concept:"Venta 1",amount:-100,invoice_date:"2015-11-20"}
      assert_raises(ActiveRecord::RecordInvalid) {Bill.create!(datos)}
  end

  test "create bill without amount should fail" do
      datos = {client_id:@cliente_roberto.id,person_id:@persona_roberto.id,concept:"Venta 1",invoice_date:"2015-11-20"}
      assert_raises(ActiveRecord::RecordInvalid) {Bill.create!(datos)}
  end

end
