defmodule WebsocketsPhoenix.SocketChannel do
  use Phoenix.Channel

  def join(socket, "topic", message) do
    { :ok, socket }
  end

  def event(socket, "message:send", message) do
    broadcast socket, "message:receive", %{ content: "Got: #{message}" }
    socket
  end
end
