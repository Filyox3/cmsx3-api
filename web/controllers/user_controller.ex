defmodule Cmsx3.UserController do
  use Cmsx3.Web, :controller

  alias Cmsx3.User
  plug Guardian.Plug.EnsureAuthenticated, handler: Cmsx3.AuthErrorHandler

  def current(conn, _) do
    user = conn
    |> Guardian.Plug.current_resource

    conn
    |> render(Cmsx3.UserView, "show.json", user: user)
  end
end