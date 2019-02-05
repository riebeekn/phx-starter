# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_starter,
  ecto_repos: [PhxStarter.Repo]

# Configures the endpoint
config :phx_starter, PhxStarterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mNEnJwTyoHGmnH+1bgZ4KoMDsUdw5KH0x4jdZvKQGtGadrL4lj0YXHTJwYD3L5nL",
  render_errors: [view: PhxStarterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxStarter.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Pow configuration
config :phx_starter, :pow,
  user: PhxStarter.Users.User,
  repo: PhxStarter.Repo,
  web_module: PhxStarterWeb

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
