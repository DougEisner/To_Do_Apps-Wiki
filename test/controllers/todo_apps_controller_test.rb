require 'test_helper'

class TodoAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_app = todo_apps(:one)
  end

  test "should get index" do
    get todo_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_todo_app_url
    assert_response :success
  end

  test "should create todo_app" do
    assert_difference('TodoApp.count') do
      post todo_apps_url, params: { todo_app: { name: @todo_app.name, picture: @todo_app.picture, rating: @todo_app.rating, url: @todo_app.url } }
    end

    assert_redirected_to todo_app_url(TodoApp.last)
  end

  test "should show todo_app" do
    get todo_app_url(@todo_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_app_url(@todo_app)
    assert_response :success
  end

  test "should update todo_app" do
    patch todo_app_url(@todo_app), params: { todo_app: { name: @todo_app.name, picture: @todo_app.picture, rating: @todo_app.rating, url: @todo_app.url } }
    assert_redirected_to todo_app_url(@todo_app)
  end

  test "should destroy todo_app" do
    assert_difference('TodoApp.count', -1) do
      delete todo_app_url(@todo_app)
    end

    assert_redirected_to todo_apps_url
  end
end
