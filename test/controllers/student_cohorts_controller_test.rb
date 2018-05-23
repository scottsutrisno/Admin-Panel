require 'test_helper'

class StudentCohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_cohorts_index_url
    assert_response :success
  end

  test "should get show" do
    get student_cohorts_show_url
    assert_response :success
  end

  test "should get new" do
    get student_cohorts_new_url
    assert_response :success
  end

  test "should get edit" do
    get student_cohorts_edit_url
    assert_response :success
  end

  test "should get create" do
    get student_cohorts_create_url
    assert_response :success
  end

  test "should get update" do
    get student_cohorts_update_url
    assert_response :success
  end

  test "should get delete" do
    get student_cohorts_delete_url
    assert_response :success
  end

end
