require "application_system_test_case"

class CitizensTest < ApplicationSystemTestCase
  setup do
    @citizen = citizens(:one)
  end

  test "visiting the index" do
    visit citizens_url
    assert_selector "h1", text: "Citizens"
  end

  test "should create citizen" do
    visit citizens_url
    click_on "New citizen"

    fill_in "Birthday", with: @citizen.birthday
    fill_in "Cns", with: @citizen.cns
    fill_in "Cpf", with: @citizen.cpf
    fill_in "Email", with: @citizen.email
    fill_in "First name", with: @citizen.first_name
    fill_in "Last name", with: @citizen.last_name
    fill_in "Phone", with: @citizen.phone
    fill_in "Photo", with: @citizen.photo
    fill_in "Status", with: @citizen.status
    click_on "Create Citizen"

    assert_text "Citizen was successfully created"
    click_on "Back"
  end

  test "should update Citizen" do
    visit citizen_url(@citizen)
    click_on "Edit this citizen", match: :first

    fill_in "Birthday", with: @citizen.birthday
    fill_in "Cns", with: @citizen.cns
    fill_in "Cpf", with: @citizen.cpf
    fill_in "Email", with: @citizen.email
    fill_in "First name", with: @citizen.first_name
    fill_in "Last name", with: @citizen.last_name
    fill_in "Phone", with: @citizen.phone
    fill_in "Photo", with: @citizen.photo
    fill_in "Status", with: @citizen.status
    click_on "Update Citizen"

    assert_text "Citizen was successfully updated"
    click_on "Back"
  end

  test "should destroy Citizen" do
    visit citizen_url(@citizen)
    click_on "Destroy this citizen", match: :first

    assert_text "Citizen was successfully destroyed"
  end
end
