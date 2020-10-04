# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ofmine,
  ecto_repos: [Ofmine.Repo]

# Configures the endpoint
config :ofmine, OfmineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "C9KyZbD4lpc3qSK6pKuoMoj4yMi8OmcghhsnuVvkxNWd0uzDjvnMzspZwN+PQqiA",
  render_errors: [view: OfmineWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Ofmine.PubSub,
  live_view: [signing_salt: "rVdh7IeZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
