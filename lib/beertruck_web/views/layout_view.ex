defmodule BeertruckWeb.LayoutView do
  use BeertruckWeb, :view

  def current_class("contact.html", _assigns) do
    "current"
  end
  def current_class("index.html", _assigns) do
    "current"
  end
  def current_class("events.html", _assigns) do
    "current"
  end
  def current_class("about.html", _assigns) do
    "current"
  end
end
