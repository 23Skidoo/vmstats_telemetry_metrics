defmodule VmstatsTelemetryMetrics do
  use TelemetryRegistry

  telemetry_event(%{
    event: [:vmstats, :single, :event],
    description: "emitted when this event happens",
    measurements: "%{duration: non_neg_integer()}",
    metadata: "%{status: status(), name: String.t()}"
  })

  @moduledoc """
  Documentation for `VmstatsTelemetryMetrics`.

  ## Telemetry

  #{telemetry_docs()}

  """

  import Telemetry.Metrics

  @doc """
  Returns a list of Telemetry metrics.
  """
  def telemetry_metrics() do
    [
      {counter("vmstats.foo.bar")}
    ]
  end
end
