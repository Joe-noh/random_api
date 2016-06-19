defmodule ExampleApi.Router do
  use ExampleApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ExampleApi do
    pipe_through :api

    resources "/microposts", MicropostController, only: [:index]
  end
end
