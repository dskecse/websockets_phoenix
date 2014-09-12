use Mix.Config

config :phoenix, WebsocketsPhoenix.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_websockets_phoenix_key",
  session_secret: "8H56FE@QVY5J16H&$4$XG0T@##1)Y+G74PF_SF%2MY$Q8=0(%+)621+6M1WIYU3V@M&1I(U8#"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


