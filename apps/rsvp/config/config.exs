# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :rsvp, ecto_repos: [Rsvp.Repo]

config :rsvp, Rsvp.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "rsvp",
  username: "postgres",
  poolsize: 10
