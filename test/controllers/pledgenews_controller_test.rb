require 'test_helper'

class PledgenewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pledgenews = pledgenews(:one)
  end

  test "should get index" do
    get pledgenews_url
    assert_response :success
  end

  test "should get new" do
    get new_pledgenews_url
    assert_response :success
  end

  test "should create pledgenews" do
    assert_difference('Pledgenew.count') do
      post pledgenews_url, params: { pledgenews: { content2: @pledgenews.content2, content3: @pledgenews.content3, content: @pledgenews.content, name: @pledgenews.name, title2: @pledgenews.title2, title3: @pledgenews.title3, title: @pledgenews.title } }
    end

    assert_redirected_to pledgenews_url(Pledgenew.last)
  end

  test "should show pledgenews" do
    get pledgenews_url(@pledgenews)
    assert_response :success
  end

  test "should get edit" do
    get edit_pledgenews_url(@pledgenews)
    assert_response :success
  end

  test "should update pledgenews" do
    patch pledgenews_url(@pledgenews), params: { pledgenews: { content2: @pledgenews.content2, content3: @pledgenews.content3, content: @pledgenews.content, name: @pledgenews.name, title2: @pledgenews.title2, title3: @pledgenews.title3, title: @pledgenews.title } }
    assert_redirected_to pledgenews_url(@pledgenews)
  end

  test "should destroy pledgenews" do
    assert_difference('Pledgenew.count', -1) do
      delete pledgenews_url(@pledgenews)
    end

    assert_redirected_to pledgenews_url
  end
end
