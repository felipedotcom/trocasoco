defmodule Trocasoco do
  alias Trocasoco.{Game, Player}
  alias Trocasoco.Game.{Actions, Status}

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

  def make_move(move) do
    move
    |>Actions.fetch_move()
    |>do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
      :move_heal -> 'cura'
      move -> Actions.attack(move)
    end
  end
end
