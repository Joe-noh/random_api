defmodule ExampleApi.MicropostControllerTest do
  use ExampleApi.ConnCase

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  test "lists all entries on index", %{conn: conn} do
    json = conn
      |> get(micropost_path(conn, :index))
      |> json_response(200)

    assert length(json["data"]) > 0
  end
end
