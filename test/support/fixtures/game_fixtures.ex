defmodule TwitchPlays2048.GameFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TwitchPlays2048.Game` context.
  """

  @doc """
  Generate a board.
  """
  def board_fixture(attrs \\ %{}) do
    {:ok, board} =
      attrs
      |> Enum.into(%{
        size: 42
      })
      |> TwitchPlays2048.Game.create_board()

    board
  end
end
