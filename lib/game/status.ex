defmodule Trocasoco.Game.Status do
  alias Trocasoco.Game
  def print_mensagem_start() do
    IO.puts("\n====Começou o jogo!!====\n")
    IO.inspect(Game.info())
    IO.puts("=========================")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n====Movimento Inválido: #{move}====\n")
  end
end
