defmodule ExampleApi.HogeFuga do
  def generate do
    random_times
    |> Enum.map(fn _ -> hoge_or_fuga end)
    |> Enum.join
  end

  def generate(:alphabet) do
    random_times(5)
    |> Enum.map(fn _ -> ~w[ho ge fu ga] |> Enum.random end)
    |> Enum.join
  end

  defp random_times(max \\ 70) do
    Range.new 1, Enum.random(1..max)
  end

  defp hoge_or_fuga do
    ["ほげ", "ふが"] |> Enum.random
  end
end
