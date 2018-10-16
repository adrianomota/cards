defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  @twenty_cards 20
  test "create deck makes 20 cards" do

      deck_length = length(Cards.create_deck())

      assert deck_length == @twenty_cards
  end

  test "shuffling a deck randomizes it" do
      deck = Cards.create_deck()
      #assert deck != Cards.shuffle(deck)
      refute deck == Cards.shuffle(deck)
  end
end
