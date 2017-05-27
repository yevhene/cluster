# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cluster,
  ecto_repos: [Cluster.Repo]

# Configures the endpoint
config :cluster, Cluster.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6Kb0X8CItwRhNIHmPOJEI0Xha5lT6bUDz+IilvSXL+j/KH45bohnPbeI2cOpz75j",
  render_errors: [view: Cluster.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Cluster.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :cluster, Cluster.Gettext, default_locale: "uk"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
