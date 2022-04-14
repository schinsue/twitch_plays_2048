defmodule TwitchPlays2048.Repo do
  use Ecto.Repo,
    otp_app: :twitch_plays_2048,
    adapter: Ecto.Adapters.Postgres
end
