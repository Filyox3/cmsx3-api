defmodule Cmsx3.UserView do
  use Cmsx3.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Cmsx3.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Cmsx3.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{
    	"type": "user",
    	"id": user.id,
    	"attributes": %{
    		"email": user.email
    	}
    }
  end
end