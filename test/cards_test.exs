defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "make_deck creates 30 cards" do
    deck = Cards.make_deck()
    assert length(deck)
  end

  test "shuffle a deck of cards" do
    deck = Cards.make_deck()
    assert deck != Cards.shuffle(deck)
  end
end
