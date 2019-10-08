require 'test_helper'

class MeasurementsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get measurements_show_url
    assert_response :success
  end

end
