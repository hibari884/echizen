require "application_system_test_case"

class InpusTest < ApplicationSystemTestCase
  setup do
    @inpu = inpus(:one)
  end

  test "visiting the index" do
    visit inpus_url
    assert_selector "h1", text: "Inpus"
  end

  test "creating a Inpu" do
    visit inpus_url
    click_on "New Inpu"

    fill_in "Content", with: @inpu.content
    fill_in "Title", with: @inpu.title
    click_on "Create Inpu"

    assert_text "Inpu was successfully created"
    click_on "Back"
  end

  test "updating a Inpu" do
    visit inpus_url
    click_on "Edit", match: :first

    fill_in "Content", with: @inpu.content
    fill_in "Title", with: @inpu.title
    click_on "Update Inpu"

    assert_text "Inpu was successfully updated"
    click_on "Back"
  end

  test "destroying a Inpu" do
    visit inpus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inpu was successfully destroyed"
  end
end
