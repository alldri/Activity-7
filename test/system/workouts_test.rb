require "application_system_test_case"

class WorkoutsTest < ApplicationSystemTestCase
  setup do
    @workout = workouts(:one)
  end

  test "visiting the index" do
    visit workouts_url
    assert_selector "h1", text: "Workouts"
  end

  test "creating a Workout" do
    visit workouts_url
    click_on "New Workout"

    fill_in "Client", with: @workout.client_id
    fill_in "Date Of Workout", with: @workout.date_of_workout
    fill_in "Duration Mins", with: @workout.duration_mins
    fill_in "Paid Amount", with: @workout.paid_amount
    fill_in "Trainer", with: @workout.trainer_id
    click_on "Create Workout"

    assert_text "Workout was successfully created"
    click_on "Back"
  end

  test "updating a Workout" do
    visit workouts_url
    click_on "Edit", match: :first

    fill_in "Client", with: @workout.client_id
    fill_in "Date Of Workout", with: @workout.date_of_workout
    fill_in "Duration Mins", with: @workout.duration_mins
    fill_in "Paid Amount", with: @workout.paid_amount
    fill_in "Trainer", with: @workout.trainer_id
    click_on "Update Workout"

    assert_text "Workout was successfully updated"
    click_on "Back"
  end

  test "destroying a Workout" do
    visit workouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workout was successfully destroyed"
  end
end
