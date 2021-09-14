require "application_system_test_case"

class ThesTest < ApplicationSystemTestCase
  setup do
    @the = thes(:one)
  end

  test "visiting the index" do
    visit thes_url
    assert_selector "h1", text: "Thes"
  end

  test "creating a The" do
    visit thes_url
    click_on "New The"

    fill_in "Agency", with: @the.Agency
    fill_in "Description", with: @the.description
    fill_in "Title", with: @the.title
    click_on "Create The"

    assert_text "The was successfully created"
    click_on "Back"
  end

  test "updating a The" do
    visit thes_url
    click_on "Edit", match: :first

    fill_in "Agency", with: @the.Agency
    fill_in "Description", with: @the.description
    fill_in "Title", with: @the.title
    click_on "Update The"

    assert_text "The was successfully updated"
    click_on "Back"
  end

  test "destroying a The" do
    visit thes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "The was successfully destroyed"
  end
end
