use Mix.Config


config :cmsx3, Cmsx3.Endpoint,
  http: [port: {:system, "PORT"}],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  url: [host: "cmsx3-api.herokuapp.com", port: 443],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  cache_static_manifest: "priv/static/manifest.json"

# Configure your database
config :cmsx3, Cmsx3.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20

# Do not print debug messages in production
config :logger, level: :info

# import_config "prod.secret.exs"
