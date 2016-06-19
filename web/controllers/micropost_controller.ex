defmodule ExampleApi.MicropostController do
  use ExampleApi.Web, :controller

  alias ExampleApi.HogeFuga

  def index(conn, _params) do
    microposts = 1..Enum.random(3..20) |> Enum.map(& %{id: &1, content: HogeFuga.generate})

    render(conn, "index.json", microposts: microposts)
  end
end
