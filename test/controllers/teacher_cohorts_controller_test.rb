require 'test_helper'

class TeacherCohortsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teacher_cohorts_index_url
    assert_response :success
  end

  test "should get show" do
    get teacher_cohorts_show_url
    assert_response :success
  end

  test "should get new" do
    get teacher_cohorts_new_url
    assert_response :success
  end

  test "should get edit" do
    get teacher_cohorts_edit_url
    assert_response :success
  end

  test "should get create" do
    get teacher_cohorts_create_url
    assert_response :success
  end

  test "should get update" do
    get teacher_cohorts_update_url
    assert_response :success
  end

  test "should get delete" do
    get teacher_cohorts_delete_url
    assert_response :success
  end

end
