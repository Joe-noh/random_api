use Mix.Config

config :example_api, ExampleApi.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "engineers-training.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :logger, level: :info

config :example_api, ExampleApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20,
  ssl: true
