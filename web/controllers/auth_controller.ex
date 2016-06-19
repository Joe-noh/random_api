defmodule ExampleApi.AuthController do
  use ExampleApi.Web, :controller

  def show(conn, _params) do
    case Enum.random(1..2) do
      1 ->
        conn
        |> put_status(200)
        |> render("show.json", auth: %{message: "Authenticated"})
      2 ->
        conn
        |> put_status(401)
        |> render(ExampleApi.ErrorView, "401.json")
    end
  end
end
