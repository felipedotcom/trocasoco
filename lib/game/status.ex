defmodule Trocasoco.Game.Status do
  alias Trocasoco.Game
  def print_mensagem_start() do
    IO.puts("\n====Começou o jogo!!====\n")
    IO.inspect(Game.info())
    IO.puts("=========================")
  end
end
