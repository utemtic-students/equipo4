require 'test_helper'

class MorrallasControllerTest < ActionController::TestCase
  test "should get agregar_saldo" do
    get :agregar_saldo
    assert_response :success
  end

  test "should get cobrar" do
    get :cobrar
    assert_response :success
  end

end
