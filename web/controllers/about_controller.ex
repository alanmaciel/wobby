defmodule Wobby.AboutController do
  use Wobby.Web, :controller

  def about_us(conn, _params) do
    render conn, "about_us.html"
  end

end
