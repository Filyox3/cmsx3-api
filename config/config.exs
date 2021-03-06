# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cmsx3,
  ecto_repos: [Cmsx3.Repo]

# Configures the endpoint
config :cmsx3, Cmsx3.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bWSHM5fuB3w9S8o/QmC33p0vEeyczHzJGMiC8qCoep8h6ICvN+mtnNQGOW22fZEW",
  render_errors: [view: Cmsx3.ErrorView, accepts: ~w(json)],
  pubsub: [name: Cmsx3.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configures Guardian
config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "Cmsx3",
  ttl: { 30, :days },
  verify_issuer: true, # optional
  secret_key: "JDWSp2zAsx4H9glhvvYRx+vcLty9rtz984USZ/xMKeq4bkYhF2YXDRm5sT2Lql3h",
  serializer: Cmsx3.GuardianSerializer

config :phoenix, :format_encoders,
  "json-api": Poison

config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
