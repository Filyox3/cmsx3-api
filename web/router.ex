defmodule Cmsx3.Router do
  use Cmsx3.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", Cmsx3 do
    pipe_through :api
    # Registration
    post "/register", RegistrationController, :create
    # Route stuff to our SessionController
    post "/token", SessionController, :create, as: :login
  end
end
