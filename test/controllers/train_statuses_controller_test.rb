require 'test_helper'

class TrainStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_status = train_statuses(:one)
  end

  test "should get index" do
    get train_statuses_url, as: :json
    assert_response :success
  end

  test "should create train_status" do
    assert_difference('TrainStatus.count') do
      post train_statuses_url, params: { train_status: { rpi_id: @train_status.rpi_id, train_id: @train_status.train_id } }, as: :json
    end

    assert_response 201
  end

  test "should show train_status" do
    get train_status_url(@train_status), as: :json
    assert_response :success
  end

  test "should update train_status" do
    patch train_status_url(@train_status), params: { train_status: { rpi_id: @train_status.rpi_id, train_id: @train_status.train_id } }, as: :json
    assert_response 200
  end

  test "should destroy train_status" do
    assert_difference('TrainStatus.count', -1) do
      delete train_status_url(@train_status), as: :json
    end

    assert_response 204
  end
end
