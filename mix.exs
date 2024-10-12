defmodule JapaneseMorseCode.MixProject do
  use Mix.Project
  @version "0.1.0"
  @source_url "https://github.com/rocket4ce/japanese_morse_code"
  def project do
    [
      app: :japanese_morse_code,
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      docs: docs()
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
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Japanese Morse Encode and Decode"
  end

  defp package do
    [
      maintainers: ["rocket4ce"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      main: "README.md",
      name: "Japanese Morse Code",
      source_url: @source_url
    ]
  end
end
