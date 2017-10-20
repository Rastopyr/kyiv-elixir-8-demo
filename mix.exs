defmodule TelegramBot.Mixfile do
  use Mix.Project

  def project do
    [ app: :telegram_bot,
      version: "0.0.1",
      elixir: "~> 1.5",
      elixirc_paths: ["lib"],
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { TelegramBot, [] },
      applications: [:logger, :nadia]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:nadia, git: "git@github.com:Rastopyr/nadia.git"}
    ]
  end
end
