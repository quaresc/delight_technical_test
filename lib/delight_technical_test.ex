defmodule DelightTechnicalTest do
  @moduledoc """
  Documentation for `DelightTechnicalTest`.
  """


  def resolve_first_part(file) do
    File.stream!(file)
    |> Enum.reduce(0, fn frequency, acc ->
      acc + (frequency |> String.trim("\n") |> String.to_integer)
    end)
  end

  def resolve_second_part(file) do
    File.stream!(file)
    |> Stream.cycle()
    |> Enum.reduce_while({0, MapSet.new([0])}, fn frequency, {acc, history} ->
      new_freq = acc + (frequency |> String.trim("\n") |> String.to_integer)

      if MapSet.member?(history, new_freq) do
        {:halt, new_freq}
      else
        {:cont, {new_freq, MapSet.put(history, new_freq)}}
      end
    end)
  end
end
