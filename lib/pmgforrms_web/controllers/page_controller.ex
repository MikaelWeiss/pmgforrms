defmodule PmgforrmsWeb.PageController do
  use PmgforrmsWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def why_strive_planner(conn, _params) do
    render(conn, :why_strive_planner)
  end
end
