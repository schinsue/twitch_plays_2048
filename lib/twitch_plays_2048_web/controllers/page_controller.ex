defmodule TwitchPlays2048Web.PageController do
  use TwitchPlays2048Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
