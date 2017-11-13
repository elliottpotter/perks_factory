require 'test_helper'

class PerksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perk = perks(:one)
  end

  test "should get index" do
    get perks_url
    assert_response :success
  end

  test "should get new" do
    get new_perk_url
    assert_response :success
  end

  test "should create perk" do
    assert_difference('Perk.count') do
      post perks_url, params: { perk: { begins_at: @perk.begins_at, ends_at: @perk.ends_at, name: @perk.name, residence_id: @perk.residence_id, vendor_id: @perk.vendor_id } }
    end

    assert_redirected_to perk_url(Perk.last)
  end

  test "should show perk" do
    get perk_url(@perk)
    assert_response :success
  end

  test "should get edit" do
    get edit_perk_url(@perk)
    assert_response :success
  end

  test "should update perk" do
    patch perk_url(@perk), params: { perk: { begins_at: @perk.begins_at, ends_at: @perk.ends_at, name: @perk.name, residence_id: @perk.residence_id, vendor_id: @perk.vendor_id } }
    assert_redirected_to perk_url(@perk)
  end

  test "should destroy perk" do
    assert_difference('Perk.count', -1) do
      delete perk_url(@perk)
    end

    assert_redirected_to perks_url
  end
end
