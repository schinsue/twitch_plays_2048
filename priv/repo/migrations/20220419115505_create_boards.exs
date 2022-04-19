defmodule TwitchPlays2048.Repo.Migrations.CreateBoards do
  use Ecto.Migration

  def change do
    create table(:boards) do
      add :size, :integer

      timestamps()
    end
  end
end
