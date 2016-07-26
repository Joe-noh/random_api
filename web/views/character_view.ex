defmodule ExampleApi.CharacterView do
  use ExampleApi.Web, :view

  alias ExampleApi.CharacterView

  def render("index.json", %{characters: characters}) do
    %{
      data: render_many(characters, CharacterView, "character.json"),
      lovely_robots_are_generated_by: "Robohash.org"
    }
  end

  def render("character.json", %{character: character}) do
    %{
      name:  character.name,
      level: character.level,
      image_url: character.image_url
    }
  end
end
