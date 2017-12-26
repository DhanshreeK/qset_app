require 'test_helper'

class JobWorkInwardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_work_inwards_new_url
    assert_response :success
  end

end
