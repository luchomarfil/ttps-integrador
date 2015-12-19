require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:roberto)
    @masculino = genders(:masculino)
    @client.gender = @masculino
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  # 
  # test "should create client" do
  #   assert_difference('Client.count') do
  #     post :create, client: { surname: "Leopoldo", cuil_cuit:20305732482, dni:30532948, birth_date: @client.birth_date, gender_id: @masculino.id, name: "Lugones",
  #       contacts: @client.contacts}
  #   end
  #
  #   assert_redirected_to client_path(assigns(:client))
  # end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { surname: @client.surname, cuil_cuit: @client.cuil_cuit, dni: @client.dni, birth_date: @client.birth_date, gender_id: @client.gender_id, name: @client.name, contacts: @client.contacts}
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
