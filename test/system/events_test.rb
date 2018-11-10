require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Address", with: @event.address
    fill_in "Admission Price", with: @event.admission_price
    fill_in "Description", with: @event.description
    fill_in "End Date", with: @event.end_date
    fill_in "Header Image", with: @event.header_image
    fill_in "Max Tickets", with: @event.max_tickets
    fill_in "Organizer Description", with: @event.organizer_description
    fill_in "Organizer Name", with: @event.organizer_name
    fill_in "Start Date", with: @event.start_date
    fill_in "Title", with: @event.title
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Address", with: @event.address
    fill_in "Admission Price", with: @event.admission_price
    fill_in "Description", with: @event.description
    fill_in "End Date", with: @event.end_date
    fill_in "Header Image", with: @event.header_image
    fill_in "Max Tickets", with: @event.max_tickets
    fill_in "Organizer Description", with: @event.organizer_description
    fill_in "Organizer Name", with: @event.organizer_name
    fill_in "Start Date", with: @event.start_date
    fill_in "Title", with: @event.title
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
