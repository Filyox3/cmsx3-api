defmodule Cmsx3.SessionController do
  use Cmsx3.Web, :controller

  def index(conn, _params) do
    # Return some static JSON for now
    conn
    |> json(%{status: "Ok"})
  end
end