require "application_system_test_case"

class MonsterLabScaffoldsTest < ApplicationSystemTestCase
  setup do
    @monster_lab_scaffold = monster_lab_scaffolds(:one)
  end

  test "visiting the index" do
    visit monster_lab_scaffolds_url
    assert_selector "h1", text: "Monster lab scaffolds"
  end

  test "should create monster lab scaffold" do
    visit monster_lab_scaffolds_url
    click_on "New monster lab scaffold"

    fill_in "Descriptionmonster", with: @monster_lab_scaffold.descriptionmonster
    fill_in "Imagemonster", with: @monster_lab_scaffold.imagemonster
    fill_in "Titlemonster", with: @monster_lab_scaffold.titlemonster
    click_on "Create Monster lab scaffold"

    assert_text "Monster lab scaffold was successfully created"
    click_on "Back"
  end

  test "should update Monster lab scaffold" do
    visit monster_lab_scaffold_url(@monster_lab_scaffold)
    click_on "Edit this monster lab scaffold", match: :first

    fill_in "Descriptionmonster", with: @monster_lab_scaffold.descriptionmonster
    fill_in "Imagemonster", with: @monster_lab_scaffold.imagemonster
    fill_in "Titlemonster", with: @monster_lab_scaffold.titlemonster
    click_on "Update Monster lab scaffold"

    assert_text "Monster lab scaffold was successfully updated"
    click_on "Back"
  end

  test "should destroy Monster lab scaffold" do
    visit monster_lab_scaffold_url(@monster_lab_scaffold)
    click_on "Destroy this monster lab scaffold", match: :first

    assert_text "Monster lab scaffold was successfully destroyed"
  end
end
