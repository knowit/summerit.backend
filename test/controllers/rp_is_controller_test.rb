require 'test_helper'

class RpIsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rpi = rpis(:one)
  end

  test "should get index" do
    get rpis_url, as: :json
    assert_response :success
  end

  test "should create rpi" do
    assert_difference('Rpi.count') do
      post rpis_url, params: { rpi: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show rpi" do
    get rpi_url(@rpi), as: :json
    assert_response :success
  end

  test "should update rpi" do
    patch rpi_url(@rpi), params: { rpi: {  } }, as: :json
    assert_response 200
  end

  test "should destroy rpi" do
    assert_difference('Rpi.count', -1) do
      delete rpi_url(@rpi), as: :json
    end

    assert_response 204
  end
end
