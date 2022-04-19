defmodule TwitchPlays2048Web.BoardLive.Index do
  use TwitchPlays2048Web, :live_view

  alias TwitchPlays2048.Game
  alias TwitchPlays2048.Game.Board

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :boards, list_boards())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Twitch Plays 2048")
    |> assign(:board, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    board = Game.get_board!(id)
    {:ok, _} = Game.delete_board(board)

    {:noreply, assign(socket, :boards, list_boards())}
  end

  defp list_boards do
    Game.list_boards()
  end
end
