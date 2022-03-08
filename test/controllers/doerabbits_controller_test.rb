require "test_helper"

class DoerabbitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doerabbit = doerabbits(:one)
  end

  test "should get index" do
    get doerabbits_url
    assert_response :success
  end

  test "should get new" do
    get new_doerabbit_url
    assert_response :success
  end

  test "should create doerabbit" do
    assert_difference("Doerabbit.count") do
      post doerabbits_url, params: { doerabbit: { born_alive: @doerabbit.born_alive, born_dead: @doerabbit.born_dead, breed_date: @doerabbit.breed_date, buck: @doerabbit.buck, comments: @doerabbit.comments, due_date: @doerabbit.due_date, eight_week_weight: @doerabbit.eight_week_weight, kindled_date: @doerabbit.kindled_date, kits_weaned: @doerabbit.kits_weaned, nest_box_date: @doerabbit.nest_box_date, rabbit_id: @doerabbit.rabbit_id } }
    end

    assert_redirected_to doerabbit_url(Doerabbit.last)
  end

  test "should show doerabbit" do
    get doerabbit_url(@doerabbit)
    assert_response :success
  end

  test "should get edit" do
    get edit_doerabbit_url(@doerabbit)
    assert_response :success
  end

  test "should update doerabbit" do
    patch doerabbit_url(@doerabbit), params: { doerabbit: { born_alive: @doerabbit.born_alive, born_dead: @doerabbit.born_dead, breed_date: @doerabbit.breed_date, buck: @doerabbit.buck, comments: @doerabbit.comments, due_date: @doerabbit.due_date, eight_week_weight: @doerabbit.eight_week_weight, kindled_date: @doerabbit.kindled_date, kits_weaned: @doerabbit.kits_weaned, nest_box_date: @doerabbit.nest_box_date, rabbit_id: @doerabbit.rabbit_id } }
    assert_redirected_to doerabbit_url(@doerabbit)
  end

  test "should destroy doerabbit" do
    assert_difference("Doerabbit.count", -1) do
      delete doerabbit_url(@doerabbit)
    end

    assert_redirected_to doerabbits_url
  end
end
