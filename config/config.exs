# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :challenge_ecto_migration,
  ecto_repos: [ChallengeEctoMigration.Repo]

# Configures the endpoint
config :challenge_ecto_migration, ChallengeEctoMigrationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ld2zBJdPMHPjKY2vr2BUbFfon59LLx6pxNWjBNVNPn+xGjCwFo5isatLeQ4clnTL",
  render_errors: [view: ChallengeEctoMigrationWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ChallengeEctoMigration.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
