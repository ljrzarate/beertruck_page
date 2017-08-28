defmodule BeertruckWeb.PageController do
  use BeertruckWeb, :controller
  plug :put_layout, "pages.html"

  def index(conn, _params) do
    render conn, "index.html", layout: {BeertruckWeb.LayoutView, "home.html"}
  end

  def about(conn, _params) do
    render conn, "about.html"
  end

  def events(conn, _params) do
    render conn, "events.html"
  end

  def contact(conn, _params) do
    render conn, "contact.html"
  end

  def what_we_do(conn, _params) do
    render conn, "what_we_do.html"
  end
end
