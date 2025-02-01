require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  setup do
    @site = sites(:one)
  end

  test "visiting the index" do
    visit sites_url
    assert_selector "h1", text: "Sites"
  end

  test "should create site" do
    visit sites_url
    click_on "New site"

    fill_in "Address line 1", with: @site.address_line_1
    fill_in "Address line 2", with: @site.address_line_2
    fill_in "Address line 3", with: @site.address_line_3
    fill_in "Address line 4", with: @site.address_line_4
    fill_in "Name", with: @site.name
    fill_in "Postcode", with: @site.postcode
    click_on "Create Site"

    assert_text "Site was successfully created"
    click_on "Back"
  end

  test "should update Site" do
    visit site_url(@site)
    click_on "Edit this site", match: :first

    fill_in "Address line 1", with: @site.address_line_1
    fill_in "Address line 2", with: @site.address_line_2
    fill_in "Address line 3", with: @site.address_line_3
    fill_in "Address line 4", with: @site.address_line_4
    fill_in "Name", with: @site.name
    fill_in "Postcode", with: @site.postcode
    click_on "Update Site"

    assert_text "Site was successfully updated"
    click_on "Back"
  end

  test "should destroy Site" do
    visit site_url(@site)
    click_on "Destroy this site", match: :first

    assert_text "Site was successfully destroyed"
  end
end
