require "application_system_test_case"

class ProfesorsTest < ApplicationSystemTestCase
  setup do
    @profesor = profesors(:one)
  end

  test "visiting the index" do
    visit profesors_url
    assert_selector "h1", text: "Profesors"
  end

  test "creating a Profesor" do
    visit profesors_url
    click_on "New Profesor"

    fill_in "Ev", with: @profesor.ev
    fill_in "Ranking", with: @profesor.ranking
    fill_in "User", with: @profesor.user_id
    click_on "Create Profesor"

    assert_text "Profesor was successfully created"
    click_on "Back"
  end

  test "updating a Profesor" do
    visit profesors_url
    click_on "Edit", match: :first

    fill_in "Ev", with: @profesor.ev
    fill_in "Ranking", with: @profesor.ranking
    fill_in "User", with: @profesor.user_id
    click_on "Update Profesor"

    assert_text "Profesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Profesor" do
    visit profesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profesor was successfully destroyed"
  end
end
