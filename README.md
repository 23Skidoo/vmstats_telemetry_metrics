# VmstatsTelemetryMetrics

A `vmstats` sink that generates `telemetry` events, to be used in conjunction
with `telemetry_metrics`.

## Description

[`vmstats`](https://github.com/ferd/vmstats/) is a tiny Erlang app that gathers
metrics on the Erlang VM and sends them to a configurable sink.

This library implements a `vmstats` sink that generates `telemetry` events.
There are also metrics definitions for
[`telemetry_metrics`](https://hexdocs.pm/telemetry_metrics/) and an [event
registry](https://hexdocs.pm/telemetry_registry/).

This library is supposed to be used in conjunction with a `telemetry_metrics`
reporter such as
[`telemetry_metrics_statsd`](https://hexdocs.pm/telemetry_metrics_statsd/) for
pushing the metrics to e.g. [Datadog](http://datadoghq.com).

## Installation

The package is [available in Hex](https://hex.pm/docs/publish). Add
`vmstats_telemetry_metrics` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:vmstats_telemetry_metrics, "~> 0.1.0"}
  ]
end
```

Docs can be found at <https://hexdocs.pm/vmstats_telemetry_metrics>.

## Usage

TODO
