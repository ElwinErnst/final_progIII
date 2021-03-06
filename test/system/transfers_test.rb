require "application_system_test_case"

class TransfersTest < ApplicationSystemTestCase
  setup do
    @transfer = transfers(:one)
  end

  test "visiting the index" do
    visit transfers_url
    assert_selector "h1", text: "Transfers"
  end

  test "creating a Transfer" do
    visit transfers_url
    click_on "New Transfer"

    fill_in "Account", with: @transfer.account_id
    fill_in "Active", with: @transfer.active
    fill_in "Concept", with: @transfer.concept
    fill_in "Date", with: @transfer.date
    fill_in "Pasive", with: @transfer.pasive
    click_on "Create Transfer"

    assert_text "Transfer was successfully created"
    click_on "Back"
  end

  test "updating a Transfer" do
    visit transfers_url
    click_on "Edit", match: :first

    fill_in "Account", with: @transfer.account_id
    fill_in "Active", with: @transfer.active
    fill_in "Concept", with: @transfer.concept
    fill_in "Date", with: @transfer.date
    fill_in "Pasive", with: @transfer.pasive
    click_on "Update Transfer"

    assert_text "Transfer was successfully updated"
    click_on "Back"
  end

  test "destroying a Transfer" do
    visit transfers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transfer was successfully destroyed"
  end
end
