defmodule Wobby.Repo do
  #use Ecto.Repo, otp_app: :wobby
  @moduledoc """
  In memory Repository
  """
  # Funcion para obtener (get) un usuario por id:
  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  # Funcion para obtener (get) un usuario por un atributo:
  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end

  # Funcionalidad para obtener todos los users:
  def all(Wobby.User) do
    [%Wobby.User{id: "1", name: "Alan",  username: "amaciel", password: "elixir"},
     %Wobby.User{id: "2", name: "Bruce", username: "bbanner", password: "secreto"},
     %Wobby.User{id: "3", name: "Tony",  username: "tstark",  password: "tinman"}]
  end
  def all(_module), do: []
end
