defmodule TelegramBot do
  use Application
  use Supervisor

  def start(_type, _args) do
    children = [
      supervisor(TelegramBot.Polling, [[name: TelegramBot.Polling]]),
      supervisor(TelegramBot.Matching, [[name: TelegramBot.Matching]])
    ]

    {:ok, _pid} = Supervisor.start_link(children, strategy: :one_for_one)
 end
end
