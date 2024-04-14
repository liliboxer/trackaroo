require "test_helper"

class TripsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get trips_url, as: :json
    assert_response :success
  end

  test "should create trip" do
    assert_difference("Trip.count") do
      post trips_url, params: { trip: { company: @trip.company, end_point: @trip.end_point, estimated_refund: @trip.estimated_refund, job_number: @trip.job_number, miles: @trip.miles, reimbursement_rate: @trip.reimbursement_rate, start_point: @trip.start_point } }, as: :json
    end

    assert_response :created
  end

  test "should show trip" do
    get trip_url(@trip), as: :json
    assert_response :success
  end

  test "should update trip" do
    patch trip_url(@trip), params: { trip: { company: @trip.company, end_point: @trip.end_point, estimated_refund: @trip.estimated_refund, job_number: @trip.job_number, miles: @trip.miles, reimbursement_rate: @trip.reimbursement_rate, start_point: @trip.start_point } }, as: :json
    assert_response :success
  end

  test "should destroy trip" do
    assert_difference("Trip.count", -1) do
      delete trip_url(@trip), as: :json
    end

    assert_response :no_content
  end
end
