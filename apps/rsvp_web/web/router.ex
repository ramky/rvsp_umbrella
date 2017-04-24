defmodule RsvpWeb.Router do
  use RsvpWeb.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RsvpWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/events", EventController, :index
    get "/events/new", EventController, :create
    post "/events/create", EventController, :add
    get "/events/:id", EventController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", RsvpWeb do
  #   pipe_through :api
  # end
end
