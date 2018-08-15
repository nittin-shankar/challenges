use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :challenge_ecto_migration, ChallengeEctoMigrationWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :challenge_ecto_migration, ChallengeEctoMigration.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "challenge_ecto_migration_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
