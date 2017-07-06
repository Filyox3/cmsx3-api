use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cmsx3, Cmsx3.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :cmsx3, Cmsx3.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "fily0zavyr",
  database: "cmsx3_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
