defmodule Trocasoco.Player do
  @required_keys [:moves, :nome, :vida]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(nome, soco, chute, cura) do
    %Trocasoco.Player{
      vida: @max_life,
      moves: %{
        chute: chute,
        cura: cura,
        soco: soco
      },
      nome: nome
    }
  end
end
