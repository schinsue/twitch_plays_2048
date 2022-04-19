defmodule TwitchPlays2048Web.BoardLive.BoardComponent do
  use TwitchPlays2048Web, :live_component

  def render(assigns) do
    ~H"""
    <div class="tile-container" id="board">
      <div class="tile tile-2 tile-position-1-1">
          <div class="tile-inner">2</div>
        </div>
      <div class="tile tile-4 tile-position-6-6">
        <div class="tile-inner">4</div>
      </div>
    </div>
    """

    ## tile-new (just newly generated)
    ## tile-merged (just merged)
  end
end
