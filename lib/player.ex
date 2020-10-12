defmodule Trocasoco.Player do
  @required_keys [:chute, :cura, :nome, :soco, :vida]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(nome, soco, chute, cura) do
    %Trocasoco.Player{
      chute: chute,
      cura: cura,
      nome: nome,
      soco: soco,
      vida: @max_life
    }
  end
end
