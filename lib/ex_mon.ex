defmodule ExMon do
  alias ExMon.Player
	alias ExMon.Game

	@computer_name "Robotron"

  def create_player(name, move_avg, move_rnd, move_heal) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end

	def start_game(player) do
		@computer_name
		|> create_player(:punch, :kick, :heal)
		|> Game.start(player)
	end
end
