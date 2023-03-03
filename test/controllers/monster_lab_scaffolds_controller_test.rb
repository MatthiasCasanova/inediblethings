require "test_helper"

class MonsterLabScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monster_lab_scaffold = monster_lab_scaffolds(:one)
  end

  test "should get index" do
    get monster_lab_scaffolds_url
    assert_response :success
  end

  test "should get new" do
    get new_monster_lab_scaffold_url
    assert_response :success
  end

  test "should create monster_lab_scaffold" do
    assert_difference("MonsterLabScaffold.count") do
      post monster_lab_scaffolds_url, params: { monster_lab_scaffold: { descriptionmonster: @monster_lab_scaffold.descriptionmonster, imagemonster: @monster_lab_scaffold.imagemonster, titlemonster: @monster_lab_scaffold.titlemonster } }
    end

    assert_redirected_to monster_lab_scaffold_url(MonsterLabScaffold.last)
  end

  test "should show monster_lab_scaffold" do
    get monster_lab_scaffold_url(@monster_lab_scaffold)
    assert_response :success
  end

  test "should get edit" do
    get edit_monster_lab_scaffold_url(@monster_lab_scaffold)
    assert_response :success
  end

  test "should update monster_lab_scaffold" do
    patch monster_lab_scaffold_url(@monster_lab_scaffold), params: { monster_lab_scaffold: { descriptionmonster: @monster_lab_scaffold.descriptionmonster, imagemonster: @monster_lab_scaffold.imagemonster, titlemonster: @monster_lab_scaffold.titlemonster } }
    assert_redirected_to monster_lab_scaffold_url(@monster_lab_scaffold)
  end

  test "should destroy monster_lab_scaffold" do
    assert_difference("MonsterLabScaffold.count", -1) do
      delete monster_lab_scaffold_url(@monster_lab_scaffold)
    end

    assert_redirected_to monster_lab_scaffolds_url
  end
end
