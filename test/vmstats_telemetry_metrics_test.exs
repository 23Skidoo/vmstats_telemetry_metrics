defmodule VmstatsTelemetryMetricsTest do
  use ExUnit.Case
  doctest VmstatsTelemetryMetrics

  import Telemetry.Metrics

  test "greets the world" do
    assert VmstatsTelemetryMetrics.telemetry_metrics() == [
             counter("vmstats.foo.bar")
           ]
  end
end
