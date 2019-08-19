defmodule Cards do
  @moduledoc """
  This module defines a set of functions to create and manipulate a deck of cards
  """

  @doc """
  Creates a deck of cards
  """
  @spec make_deck() :: [String.t()]
  def make_deck do
    suits = ["Spades", "Diamonds", "Hearts", "Clovers"]
    numbers = ["Ace", "Two", "Three", "Four", "Five", "Six"]

    for suit <- suits, number <- numbers do
      "#{number} of #{suit}"
    end
  end

  @doc """
  Randomizes a deck
  """
  @spec shuffle([String.t()]) :: [String.t()]
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
  Deals a hand of cards based on `hand_size`

  ## Examples

      iex(1)> deck = Cards.make_deck
      iex(2)> Cards.deal(deck, 5)
      {["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
      "Five of Spades"],
      ["Six of Spades", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds",
      "Four of Diamonds", "Five of Diamonds", "Six of Diamonds", "Ace of Hearts",
      "Two of Hearts", "Three of Hearts", "Four of Hearts", "Five of Hearts",
      "Six of Hearts", "Ace of Clovers", "Two of Clovers", "Three of Clovers",
      "Four of Clovers", "Five of Clovers", "Six of Clovers"]}

  """
  @spec deal([String.t()], number) :: {[String.t()], [String.t()]}
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
  Determines if a given card is present on a given deck

  ## Examples

      iex> deck = Cards.make_deck
      iex> Cards.contains?(deck, "Ace of Spades")
      true

  """
  @spec contains?([String.t()], String.t()) :: boolean
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
