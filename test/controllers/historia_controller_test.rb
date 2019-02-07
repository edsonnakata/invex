require 'test_helper'

class HistoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historium = historia(:one)
  end

  test "should get index" do
    get historias_url
    assert_response :success
  end

  test "should get new" do
    get new_historia_url
    assert_response :success
  end

  test "should create historium" do
    assert_difference('Historium.count') do
      post historias_url, params: {historium: {descricao: @historium.descricao, e_pago: @historium.e_pago, nome: @historium.nome, titulo: @historium.titulo, usuario: @historium.usuario } }
    end

    assert_redirected_to historia_url(Historia.last)
  end

  test "should show historium" do
    get historia_url(@historium)
    assert_response :success
  end

  test "should get edit" do
    get edit_historia_url(@historium)
    assert_response :success
  end

  test "should update historium" do
    patch historia_url(@historium), params: {historium: {descricao: @historium.descricao, e_pago: @historium.e_pago, nome: @historium.nome, titulo: @historium.titulo, usuario: @historium.usuario } }
    assert_redirected_to historia_url(@historium)
  end

  test "should destroy historium" do
    assert_difference('Historium.count', -1) do
      delete historia_url(@historium)
    end

    assert_redirected_to historias_url
  end
end
