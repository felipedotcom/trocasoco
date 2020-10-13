defmodule Trocasoco do
  alias Trocasoco.{Game, Player}
  alias Trocasoco.Game.Status

  @computer_name "Barba Negra"
  def create_player(nome, soco, chute, vida) do
    Player.build(nome, soco, chute, vida)
  end

  def start_game(player) do
    @computer_name
    |>create_player(:soco, :chute, :cura)
    |>Game.start(player)

    Status.print_mensagem_start()
  end
end
