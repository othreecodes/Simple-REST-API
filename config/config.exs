# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :simple_rest_api,
  ecto_repos: [SimpleRestApi.Repo]

# Configures the endpoint
config :simple_rest_api, SimpleRestApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tF749BgsG40RBZW8ZI/NckRSeRZ64CeJm3SYFf73r29hdUUliakpVI15OKjcp5MN",
  render_errors: [view: SimpleRestApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: SimpleRestApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
