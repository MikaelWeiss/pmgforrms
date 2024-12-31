defmodule PmgforrmsWeb.PageController do
  use PmgforrmsWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def why_strive_planner(conn, _params) do
    render(conn, :why_strive_planner)
  end

  def how_it_works(conn, _params) do
    render(conn, :how_it_works)
  end

  def faq(conn, _params) do
    render(conn, :faq)
  end

  def blog(conn, _params) do
    render(conn, :blog)
  end

  def blog_post(conn, %{"slug" => slug}) do
    # For now, we'll just pass the slug to the template
    # In a real app, you'd fetch the blog post from a database
    render(conn, :blog_post, slug: slug)
  end
end
