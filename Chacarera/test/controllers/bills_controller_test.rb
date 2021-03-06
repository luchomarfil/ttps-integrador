require 'test_helper'

class BillsControllerTest < ActionController::TestCase
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bills)
  end

  test "should get new" do
    get :new, client_id: clients(:one)
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post :create, client_id:@bill.client_id, bill: { client_id: @bill.client_id, concept: @bill.concept, invoice_date: @bill.invoice_date, amount: @bill.amount, person_id: @bill.person_id }
    end

    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should show bill" do
    get :show, id: @bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill
    assert_response :success
  end

  test "should update bill" do
    patch :update, id: @bill, bill: { client_id: @bill.client_id, concept: @bill.concept, invoice_date: @bill.invoice_date, amount: @bill.amount, person_id: @bill.person_id }
    assert_redirected_to bill_path(assigns(:bill))
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete :destroy, id: @bill
    end

    assert_redirected_to bills_path
  end
end
