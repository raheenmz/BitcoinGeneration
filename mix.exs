defmodule Project1.Mixfile do
  use Mix.Project

  def project do
    [
      app: :project1,
      version: "0.1.0",
      elixir: "~> 1.5.1",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :dev,
      escript: escript(),
      deps: deps(),
      application: application()
    ]
  end

  def escript do
     [
	main_module: Project1
     ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
