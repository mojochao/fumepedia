defmodule Fumepedia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :fumepedia,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Fumepedia.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test]},
      {:dogma, "~> 0.1.15"},
      {:distillery, "~> 1.5"},
      {:phoenix, "~> 1.3.0"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:postgrex, ">= 0.0.0"},
      {:poison, "~> 3.0", override: true},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:absinthe, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0",
       override: true},
      {:absinthe_plug, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0",
       override: true},
      {:absinthe_phoenix, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0",
       override: true},
      {:absinthe_relay, "~> 1.4.0-beta or ~> 1.4.0-rc or ~> 1.4.0 or ~> 1.3.0",
       override: true},
    ]
  end

  defp aliases do
    [
      "initdb": ["ecto.drop", "ecto.create", "ecto.migrate",
                 "run priv/repo/seeds.exs"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end

end
