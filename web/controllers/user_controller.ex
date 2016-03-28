defmodule Wobby.UserController do
  use Wobby.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Wobby.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Wobby.User, id)
    render conn, "show.html", user: user
  end

end
