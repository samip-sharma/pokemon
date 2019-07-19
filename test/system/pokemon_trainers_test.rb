require "application_system_test_case"

class PokemonTrainersTest < ApplicationSystemTestCase
  setup do
    @pokemon_trainer = pokemon_trainers(:one)
  end

  test "visiting the index" do
    visit pokemon_trainers_url
    assert_selector "h1", text: "Pokemon Trainers"
  end

  test "creating a Pokemon trainer" do
    visit pokemon_trainers_url
    click_on "New Pokemon Trainer"

    fill_in "Name", with: @pokemon_trainer.name
    click_on "Create Pokemon trainer"

    assert_text "Pokemon trainer was successfully created"
    click_on "Back"
  end

  test "updating a Pokemon trainer" do
    visit pokemon_trainers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pokemon_trainer.name
    click_on "Update Pokemon trainer"

    assert_text "Pokemon trainer was successfully updated"
    click_on "Back"
  end

  test "destroying a Pokemon trainer" do
    visit pokemon_trainers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pokemon trainer was successfully destroyed"
  end
end
