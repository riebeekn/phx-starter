use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_starter, PhxStarterWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phx_starter, PhxStarter.Repo,
  username: "postgres",
  password: "postgres",
  database: "phx_starter_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
