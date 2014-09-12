# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, WebsocketsPhoenix.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_websockets_phoenix_key",
  session_secret: "8H56FE@QVY5J16H&$4$XG0T@##1)Y+G74PF_SF%2MY$Q8=0(%+)621+6M1WIYU3V@M&1I(U8#",
  catch_errors: true,
  debug_errors: false,
  error_controller: WebsocketsPhoenix.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
