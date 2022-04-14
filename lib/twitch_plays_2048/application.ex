defmodule TwitchPlays2048.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TwitchPlays2048.Repo,
      # Start the Telemetry supervisor
      TwitchPlays2048Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TwitchPlays2048.PubSub},
      # Start the Endpoint (http/https)
      TwitchPlays2048Web.Endpoint
      # Start a worker by calling: TwitchPlays2048.Worker.start_link(arg)
      # {TwitchPlays2048.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TwitchPlays2048.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TwitchPlays2048Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
