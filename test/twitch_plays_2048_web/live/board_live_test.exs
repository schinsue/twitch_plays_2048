defmodule TwitchPlays2048Web.BoardLiveTest do
  use TwitchPlays2048Web.ConnCase

  import Phoenix.LiveViewTest
  import TwitchPlays2048.GameFixtures

  defp create_board(_) do
    board = board_fixture()
    %{board: board}
  end

  describe "Index" do
    setup [:create_board]

    test "lists all boards", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, Routes.board_index_path(conn, :index))

      assert html =~ "2048"
    end
  end
end
