defmodule TelegramBot.Commands.Separate do
  # Notice that here we just `use` Proxy. Router is only
  # used to map commands to actions. It's best to keep routing
  # only in TelegramBot.Commands file. Proxy gives us helpful
  # macros to deal with Nadia functions.
  use TelegramBot.Proxy

  # Functions must have as first parameter a variable named
  # update. Otherwise, macros (like `send_message`) will not
  # work as expected.
  def outside(update) do
    send_message "This came from a separate module."
  end
end
