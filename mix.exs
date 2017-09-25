defmodule GCloudex.Mixfile do
  use Mix.Project

  @version "0.4.4"

  def project do
    [
     app: :gcloudex,
     version: @version,
     elixir: "~> 1.2",
     description: "Google Cloud for Elixir. Friendly set of wrappers for "
                   <> "Google Cloud Platform API's.",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison, :goth]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.13.0"},
      {:goth,      "~> 0.6.0"},
      {:poison,    "~> 1.2 or ~> 3.1"},
      {:credo,     "~> 0.8.6", only: [:dev, :test]},
      {:ex_doc,    ">= 0.16.0", only: [:dev]},
      {:earmark,   ">= 1.2.3"}
    ]
  end

  defp package do 
    [
     maintainers: ["Sasha Fonseca"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/sashaafm/gcloudex"}
    ]
  end
end
