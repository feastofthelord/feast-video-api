require 'test_helper'

class Api::V1::VideosControllerTest < ActionController::TestCase
  setup do
    @api_v1_video = api_v1_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_videos)
  end

  test "should create api_v1_video" do
    assert_difference('Api::V1::Video.count') do
      post :create, api_v1_video: { description: @api_v1_video.description, series: @api_v1_video.series, service: @api_v1_video.service, speaker: @api_v1_video.speaker, thumbnail: @api_v1_video.thumbnail, title: @api_v1_video.title }
    end

    assert_response 201
  end

  test "should show api_v1_video" do
    get :show, id: @api_v1_video
    assert_response :success
  end

  test "should update api_v1_video" do
    put :update, id: @api_v1_video, api_v1_video: { description: @api_v1_video.description, series: @api_v1_video.series, service: @api_v1_video.service, speaker: @api_v1_video.speaker, thumbnail: @api_v1_video.thumbnail, title: @api_v1_video.title }
    assert_response 204
  end

  test "should destroy api_v1_video" do
    assert_difference('Api::V1::Video.count', -1) do
      delete :destroy, id: @api_v1_video
    end

    assert_response 204
  end
end
