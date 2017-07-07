defmodule Cmsx3.RegistrationController do
  use Cmsx3.Web, :controller
  alias Cmsx3.User

  def create(conn, %{"data" => %{"type" => "user",
    "attributes" => %{"email" => email,
      "password" => password,
      "password_confirmation" => password_confirmation}}}) do

    changeset = User.changeset %User{}, %{email: email,
      password_confirmation: password_confirmation,
      password: password}

    case Repo.insert changeset do
      {:ok, user} ->
        conn
        |> put_status(:created)
        |> render(Cmsx3.UserView, "show.json", user: user)
      {:error, changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(Cmsx3.ChangesetView, "error.json", changeset: changeset)
    end

  end
end