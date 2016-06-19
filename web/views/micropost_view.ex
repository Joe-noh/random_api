defmodule ExampleApi.MicropostView do
  use ExampleApi.Web, :view

  alias ExampleApi.MicropostView

  def render("index.json", %{microposts: microposts}) do
    %{data: render_many(microposts, MicropostView, "micropost.json")}
  end

  def render("show.json", %{micropost: micropost}) do
    %{data: render_one(micropost, MicropostView, "micropost.json")}
  end

  def render("micropost.json", %{micropost: micropost}) do
    %{id: micropost.id, content: micropost.content}
  end
end
