require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url, as: :json
    assert_response :success
  end

  test "should create player" do
    assert_difference("Player.count") do
      post players_url, params: { player: { detail_five: @player.detail_five, detail_four: @player.detail_four, detail_one: @player.detail_one, detail_three: @player.detail_three, detail_two: @player.detail_two, name: @player.name } }, as: :json
    end

    assert_response :created
  end

  test "should show player" do
    get player_url(@player), as: :json
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { detail_five: @player.detail_five, detail_four: @player.detail_four, detail_one: @player.detail_one, detail_three: @player.detail_three, detail_two: @player.detail_two, name: @player.name } }, as: :json
    assert_response :success
  end

  test "should destroy player" do
    assert_difference("Player.count", -1) do
      delete player_url(@player), as: :json
    end

    assert_response :no_content
  end
end
