defmodule ExampleApi.CharacterController do
  use ExampleApi.Web, :controller

  def index(conn, _params) do
    characters = [
      %{name: "bob", level: 3, image_url: "https://robohash.org/hoge.png?set=set3"}
    ]

    render(conn, "index.json", characters: characters)
  end
end
