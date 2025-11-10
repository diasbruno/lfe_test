defmodule LfeTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :lfe_test,
      version: "0.1.0",
      elixir: "1.18.4",
      start_permanent: Mix.env() == :prod,
      compilers: [:lfe] ++ Mix.compilers(),
      deps: deps()
      # compile_path: ["lib"]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :rebar3_lfe]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rebar3_hex, git: "https://github.com/erlef/rebar3_hex.git", tag: "v7.0.11", override: true},
      {:lfe, path: "../lfe", override: true},
      {:mix_lfe, path: "../mix_lfe", only: [:dev, :test], app: false, override: true},
      {:rebar3_lfe, path: "../rebar3_lfe", override: true},
      {:rebar3_lint, "4.1.1", override: true}
    ]
  end
end
