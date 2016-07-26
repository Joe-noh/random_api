defmodule ExampleApi.CharacterController do
  use ExampleApi.Web, :controller

  alias ExampleApi.HogeFuga

  def index(conn, _params) do
    render(conn, "index.json", characters: Enum.map(1..50, fn _ -> generate_character end))
  end

  defp generate_character do
    %{
      name: Faker.Name.name,
      level: Enum.random(1..100),
      image_url: "https://robohash.org/#{HogeFuga.generate}.png?set=set3"
    }
  end
end
