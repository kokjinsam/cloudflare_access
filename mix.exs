defmodule CloudflareAccess.MixProject do
  use Mix.Project

  def project do
    [
      app: :cloudflare_access,
      version: "1.0.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:joken, "~> 2.6.1"},
      {:joken_jwks, "~> 1.6.0"},
      {:credo, "~> 1.7.7", only: [:dev, :test], runtime: false}
    ]
  end
end
