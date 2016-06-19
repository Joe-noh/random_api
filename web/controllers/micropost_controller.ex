defmodule ExampleApi.MicropostController do
  use ExampleApi.Web, :controller

  alias ExampleApi.Micropost

  def index(conn, _params) do
    microposts = [
      %{id: 1, content: "AAAAAAAA"},
      %{id: 2, content: "BBBBBBBB"},
      %{id: 3, content: "CCCCCCCC"}
    ]

    render(conn, "index.json", microposts: microposts)
  end
end
