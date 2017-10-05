defmodule Exum.Mixfile do
  @moduledoc false

  use Mix.Project

  @version "0.1.0"
  @project_url "https://github.com/sammkj/exum"
  def project do
    [
      app: :exum,
      version: @version,
      elixir: "~> 1.5",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      description: "Enumerables.",
      package: package(),
      deps: deps(),
      source_url: @project_url,
      homepage_url: @project_url,
    ]
  end


  defp elixirc_paths(:test) do
    ["lib", "test/support"]
  end

  defp elixirc_paths(_) do
    ["lib"]
  end


  def application do
    []
  end


  defp package do
    [
      maintainers: ["Kok Jin Sam"],
      licenses: ["MIT"],
      links: %{"GitHub" => @project_url},
    ]
  end


  defp deps do
    [
      {:credo, "~> 0.8.6", [only: [:dev, :test], runtime: false]},
      {:dialyxir, "~> 0.5.1", [only: :dev, runtime: false]},
      {:exfmt, [github: "lpil/exfmt", only: :dev, runtime: false]},
    ]
  end
end
