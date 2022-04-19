defmodule TwitchPlays2048.GameTest do
  use TwitchPlays2048.DataCase

  alias TwitchPlays2048.Game

  describe "boards" do
    alias TwitchPlays2048.Game.Board

    import TwitchPlays2048.GameFixtures

    @invalid_attrs %{size: nil}

    test "list_boards/0 returns all boards" do
      board = board_fixture()
      assert Game.list_boards() == [board]
    end

    test "get_board!/1 returns the board with given id" do
      board = board_fixture()
      assert Game.get_board!(board.id) == board
    end

    test "create_board/1 with valid data creates a board" do
      valid_attrs = %{size: 42}

      assert {:ok, %Board{} = board} = Game.create_board(valid_attrs)
      assert board.size == 42
    end

    test "create_board/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Game.create_board(@invalid_attrs)
    end

    test "update_board/2 with valid data updates the board" do
      board = board_fixture()
      update_attrs = %{size: 43}

      assert {:ok, %Board{} = board} = Game.update_board(board, update_attrs)
      assert board.size == 43
    end

    test "update_board/2 with invalid data returns error changeset" do
      board = board_fixture()
      assert {:error, %Ecto.Changeset{}} = Game.update_board(board, @invalid_attrs)
      assert board == Game.get_board!(board.id)
    end

    test "delete_board/1 deletes the board" do
      board = board_fixture()
      assert {:ok, %Board{}} = Game.delete_board(board)
      assert_raise Ecto.NoResultsError, fn -> Game.get_board!(board.id) end
    end

    test "change_board/1 returns a board changeset" do
      board = board_fixture()
      assert %Ecto.Changeset{} = Game.change_board(board)
    end
  end
end
