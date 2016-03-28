defmodule Wobby.UserController do
  use Wobby.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Wobby.User)
    render conn, "index.html", users: users
  end


end
