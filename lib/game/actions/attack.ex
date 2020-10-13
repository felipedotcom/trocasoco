defmodule Trocasoco.Game.Actions.Attack do
  @move_soco_forca 18..25
  @move_chute_forca 10..35

  def attack_opponent(opponent, move) do
    damage = calculate_power(move)
  end

  defp calculate_power(:soco), do: Enum.random(@move_soco_forca)
  defp calculate_power(:chute), do: Enum.random(@move_chute_forca )
end
