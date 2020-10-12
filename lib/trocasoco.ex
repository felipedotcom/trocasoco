defmodule Trocasoco do
  alias Trocasoco.Player
  def create_player(nome, soco, chute, vida) do
    Player.build(nome, soco, chute, vida)

  end
end
