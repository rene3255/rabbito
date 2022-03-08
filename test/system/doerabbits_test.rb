require "application_system_test_case"

class DoerabbitsTest < ApplicationSystemTestCase
  setup do
    @doerabbit = doerabbits(:one)
  end

  test "visiting the index" do
    visit doerabbits_url
    assert_selector "h1", text: "Doerabbits"
  end

  test "should create doerabbit" do
    visit doerabbits_url
    click_on "New doerabbit"

    check "Born alive" if @doerabbit.born_alive
    check "Born dead" if @doerabbit.born_dead
    fill_in "Breed date", with: @doerabbit.breed_date
    fill_in "Buck", with: @doerabbit.buck
    fill_in "Comments", with: @doerabbit.comments
    fill_in "Due date", with: @doerabbit.due_date
    fill_in "Eight week weight", with: @doerabbit.eight_week_weight
    fill_in "Kindled date", with: @doerabbit.kindled_date
    fill_in "Kits weaned", with: @doerabbit.kits_weaned
    fill_in "Nest box date", with: @doerabbit.nest_box_date
    fill_in "Rabbit", with: @doerabbit.rabbit_id
    click_on "Create Doerabbit"

    assert_text "Doerabbit was successfully created"
    click_on "Back"
  end

  test "should update Doerabbit" do
    visit doerabbit_url(@doerabbit)
    click_on "Edit this doerabbit", match: :first

    check "Born alive" if @doerabbit.born_alive
    check "Born dead" if @doerabbit.born_dead
    fill_in "Breed date", with: @doerabbit.breed_date
    fill_in "Buck", with: @doerabbit.buck
    fill_in "Comments", with: @doerabbit.comments
    fill_in "Due date", with: @doerabbit.due_date
    fill_in "Eight week weight", with: @doerabbit.eight_week_weight
    fill_in "Kindled date", with: @doerabbit.kindled_date
    fill_in "Kits weaned", with: @doerabbit.kits_weaned
    fill_in "Nest box date", with: @doerabbit.nest_box_date
    fill_in "Rabbit", with: @doerabbit.rabbit_id
    click_on "Update Doerabbit"

    assert_text "Doerabbit was successfully updated"
    click_on "Back"
  end

  test "should destroy Doerabbit" do
    visit doerabbit_url(@doerabbit)
    click_on "Destroy this doerabbit", match: :first

    assert_text "Doerabbit was successfully destroyed"
  end
end
