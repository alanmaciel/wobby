defmodule Wobby.PageController do
  use Wobby.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
