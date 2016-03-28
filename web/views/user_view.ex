defmodule Wobby.UserView do
  use Wobby.Web, :view
  alias Wobby.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
