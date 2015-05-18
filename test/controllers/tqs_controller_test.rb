require 'test_helper'

class TqsControllerTest < ActionController::TestCase
  setup do
    @tq = tqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tq" do
    assert_difference('Tq.count') do
      post :create, tq: { client: @tq.client, date: @tq.date, impact: @tq.impact, query: @tq.query, tqid: @tq.tqid }
    end

    assert_redirected_to tq_path(assigns(:tq))
  end

  test "should show tq" do
    get :show, id: @tq
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tq
    assert_response :success
  end

  test "should update tq" do
    patch :update, id: @tq, tq: { client: @tq.client, date: @tq.date, impact: @tq.impact, query: @tq.query, tqid: @tq.tqid }
    assert_redirected_to tq_path(assigns(:tq))
  end

  test "should destroy tq" do
    assert_difference('Tq.count', -1) do
      delete :destroy, id: @tq
    end

    assert_redirected_to tqs_path
  end
end
