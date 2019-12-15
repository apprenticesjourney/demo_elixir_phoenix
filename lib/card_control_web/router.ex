defmodule CardControlWeb.Router do
  use CardControlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_layout, {CardControlWeb.LayoutView, :app}
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CardControlWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/demo", DemoLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", CardControlWeb do
  #   pipe_through :api
  # end
end
