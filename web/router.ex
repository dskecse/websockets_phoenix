defmodule WebsocketsPhoenix.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  channel "channel", WebsocketsPhoenix.SocketChannel

  get "/", WebsocketsPhoenix.PageController, :index, as: :pages
end
