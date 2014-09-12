use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, WebsocketsPhoenix.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_websockets_phoenix_key",
  session_secret: "8H56FE@QVY5J16H&$4$XG0T@##1)Y+G74PF_SF%2MY$Q8=0(%+)621+6M1WIYU3V@M&1I(U8#"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

