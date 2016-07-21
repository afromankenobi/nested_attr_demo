require 'test_helper'

class RandomExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @random_exam = random_exams(:one)
  end

  test "should get index" do
    get random_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_random_exam_url
    assert_response :success
  end

  test "should create random_exam" do
    assert_difference('RandomExam.count') do
      post random_exams_url, params: { random_exam: { name: @random_exam.name } }
    end

    assert_redirected_to random_exam_url(RandomExam.last)
  end

  test "should show random_exam" do
    get random_exam_url(@random_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_random_exam_url(@random_exam)
    assert_response :success
  end

  test "should update random_exam" do
    patch random_exam_url(@random_exam), params: { random_exam: { name: @random_exam.name } }
    assert_redirected_to random_exam_url(@random_exam)
  end

  test "should destroy random_exam" do
    assert_difference('RandomExam.count', -1) do
      delete random_exam_url(@random_exam)
    end

    assert_redirected_to random_exams_url
  end
end
