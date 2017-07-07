defmodule Cmsx3.AuthErrorHandler do
 use Cmsx3.Web, :controller

 def unauthenticated(conn, params) do
  conn
   |> put_status(401)
   |> render(Cmsx3.ErrorView, "401.json")
 end

 def unauthorized(conn, params) do
  conn
   |> put_status(403)
   |> render(Cmsx3.ErrorView, "403.json")
 end
end