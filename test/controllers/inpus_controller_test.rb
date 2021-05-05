require 'test_helper'

class InpusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inpu = inpus(:one)
  end

  test "should get index" do
    get inpus_url
    assert_response :success
  end

  test "should get new" do
    get new_inpu_url
    assert_response :success
  end

  test "should create inpu" do
    assert_difference('Inpu.count') do
      post inpus_url, params: { inpu: { content: @inpu.content, title: @inpu.title } }
    end

    assert_redirected_to inpu_url(Inpu.last)
  end

  test "should show inpu" do
    get inpu_url(@inpu)
    assert_response :success
  end

  test "should get edit" do
    get edit_inpu_url(@inpu)
    assert_response :success
  end

  test "should update inpu" do
    patch inpu_url(@inpu), params: { inpu: { content: @inpu.content, title: @inpu.title } }
    assert_redirected_to inpu_url(@inpu)
  end

  test "should destroy inpu" do
    assert_difference('Inpu.count', -1) do
      delete inpu_url(@inpu)
    end

    assert_redirected_to inpus_url
  end
end
