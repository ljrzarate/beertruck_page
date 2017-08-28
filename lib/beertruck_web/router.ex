defmodule BeertruckWeb.Router do
  use BeertruckWeb, :router

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

  scope "/", BeertruckWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/about", PageController, :about
    get "/events", PageController, :events
    get "/contact", PageController, :contact
    get "/what_we_do", PageController, :what_we_do
  end

  # Other scopes may use custom stacks.
  # scope "/api", BeertruckWeb do
  #   pipe_through :api
  # end
end
