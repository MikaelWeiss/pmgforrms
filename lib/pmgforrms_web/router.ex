defmodule PmgforrmsWeb.Router do
  use PmgforrmsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {PmgforrmsWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PmgforrmsWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/why-strive-planner", PageController, :why_strive_planner
    get "/how-it-works", PageController, :how_it_works
    get "/faq", PageController, :faq
  end

  # Other scopes may use custom stacks.
  # scope "/api", PmgforrmsWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard in development
  if Application.compile_env(:pmgforrms, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: PmgforrmsWeb.Telemetry
    end
  end
end
