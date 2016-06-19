# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :example_api,
  ecto_repos: [ExampleApi.Repo]

# Configures the endpoint
config :example_api, ExampleApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tx02gf1aRvqL6q9kynVkO6CFreRQGCvIAw8Gqqw80lhcDvxsgMtMJ7Qh9HqJKmxx",
  render_errors: [view: ExampleApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: ExampleApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
