defmodule LfeTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :lfe_test,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers() ++ [:lfe],
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      # {:lfe, git: "https://github.com/diasbruno/lfe.git", tag: "ensure-directory-exists-before-writing-beam-file"},
      {:mix_lfe, git: "https://github.com/diasbruno/mix_lfe.git", tag: "update-lfe-versions", only: [:dev, :test], app: false},
      {:rebar3_lfe, "0.5.4"},
      {:lfe, "2.2.0"}
    ]
  end
end
