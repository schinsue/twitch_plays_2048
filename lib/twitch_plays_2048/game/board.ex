defmodule TwitchPlays2048.Game.Board do
  use Ecto.Schema
  import Ecto.Changeset

  schema "boards" do
    field :size, :integer

    timestamps()
  end

  @doc false
  def changeset(board, attrs) do
    board
    |> cast(attrs, [:size])
    |> validate_required([:size])
  end
end
