require 'test_helper'

class MemberTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member_task = member_tasks(:one)
  end

  test "should get index" do
    get member_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_member_task_url
    assert_response :success
  end

  test "should create member_task" do
    assert_difference('MemberTask.count') do
      post member_tasks_url, params: { member_task: { member: @member_task.member, task: @member_task.task, task_type: @member_task.task_type } }
    end

    assert_redirected_to member_task_url(MemberTask.last)
  end

  test "should show member_task" do
    get member_task_url(@member_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_task_url(@member_task)
    assert_response :success
  end

  test "should update member_task" do
    patch member_task_url(@member_task), params: { member_task: { member: @member_task.member, task: @member_task.task, task_type: @member_task.task_type } }
    assert_redirected_to member_task_url(@member_task)
  end

  test "should destroy member_task" do
    assert_difference('MemberTask.count', -1) do
      delete member_task_url(@member_task)
    end

    assert_redirected_to member_tasks_url
  end
end
