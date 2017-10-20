defmodule TelegramBot.Commands do
  use TelegramBot.Utils
  use TelegramBot.Proxy

  alias TelegramBot.Commands.Separate

  command "start" do
    send_message "wubba lubba dub dub!"
  end

  command ["hello", "hi"] do
    send_message "Hello from Kyiv Elixir 8!"
    send_photo "priv/assets/logo.png"
  end

  message do
    send_message "Sorry, I couldn't understand you"
  end
end
