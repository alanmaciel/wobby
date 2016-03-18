defmodule Wobby.AboutController do
  use Wobby.Web, :controller

  def about_us(conn, %{"name" => name}) do
    render conn, "about_us.html", name: name
  end

end
