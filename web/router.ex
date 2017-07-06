defmodule Cmsx3.Router do
  use Cmsx3.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", Cmsx3 do
    pipe_through :api
    # Route stuff to our SessionController
    resources "/session", SessionController, only: [:index]
  end
end
