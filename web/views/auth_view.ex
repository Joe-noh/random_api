defmodule ExampleApi.AuthView do
  use ExampleApi.Web, :view

  alias ExampleApi.AuthView

  def render("show.json", %{auth: auth}) do
    %{data: render_one(auth, AuthView, "auth.json")}
  end

  def render("auth.json", %{auth: auth}) do
    %{message: auth.message}
  end
end
