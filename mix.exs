defmodule VmstatsTelemetryMetrics.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/23Skidoo/vmstats_telemetry_metrics"

  def project do
    [
      app: :vmstats_telemetry_metrics,
      version: @version,
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      description: """
      vmstats sink for telemetry metrics.
      """,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:telemetry, "~> 1.2"},
      {:telemetry_metrics, "~> 0.6 or ~> 1.0"},
      {:telemetry_metrics_statsd, "~> 0.7"},
      {:telemetry_registry, "~> 0.3"},
      {:vmstats, "~> 2.4"}
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: ["README.md", "CHANGELOG.md"]
    ]
  end

  defp package do
    [
      maintainers: ["Mikhail Glushenkov"],
      licenses: ["BSD-3"],
      files: ~w(lib mix.exs README.md LICENSE CHANGELOG.md),
      links: %{
        "GitHub" => @source_url
      }
    ]
  end
end
