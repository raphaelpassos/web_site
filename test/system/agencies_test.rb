require "application_system_test_case"

class AgenciesTest < ApplicationSystemTestCase
  setup do
    @agency = agencies(:one)
  end

  test "visiting the index" do
    visit agencies_url
    assert_selector "h1", text: "Agencies"
  end

  test "creating a Agency" do
    visit agencies_url
    click_on "New Agency"

    fill_in "Description", with: @agency.description
    fill_in "Title", with: @agency.title
    click_on "Create Agency"

    assert_text "Agency was successfully created"
    click_on "Back"
  end

  test "updating a Agency" do
    visit agencies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @agency.description
    fill_in "Title", with: @agency.title
    click_on "Update Agency"

    assert_text "Agency was successfully updated"
    click_on "Back"
  end

  test "destroying a Agency" do
    visit agencies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agency was successfully destroyed"
  end
end
