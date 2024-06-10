defmodule VmstatsTelemetryMetrics.Sink do
  @moduledoc """
  VMstats sink implementation for telemetry.
  """

  @behaviour :vmstats_sink

  # TODO: should be configurable
  @base_key Application.compile_env(:vmstats, :base_key, :vmstats)
  @key_separator Application.compile_env(:vmstats, :key_separator, ?.)

  @impl true
  def collect(:counter, key, _value) do
    key
    |> metric_to_event_name()
    |> then(&[@base_key, &1])
    |> :telemetry.execute(%{})
  end

  def collect(:gauge, key, value) do
    collect(:timing, key, value)
  end

  def collect(:timing, key, value) do
    {name, prefix} =
      key
      |> metric_to_event_name()
      |> List.pop_at(-1)

    :telemetry.execute([@base_key | prefix], %{name => value})
  end

  defp metric_to_event_name(metric) do
    metric
    |> :erlang.iolist_to_binary()
    |> :binary.split("#{@key_separator}")
    |> Enum.map(&:"#{&1}")
  end
end
