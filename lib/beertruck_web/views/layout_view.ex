defmodule BeertruckWeb.LayoutView do
  use BeertruckWeb, :view

  def active_class(conn, path) do
    current_path = Path.join(["/" | conn.path_info])
    if path == current_path do
      "current"
    else
      nil
    end
  end

  def page_title(conn) do
    current_path = Path.join(["/" | conn.path_info])
    cond do
      current_path == "/contact" ->
        "Contacto"
      current_path == "/events" ->
        "Eventos"
      current_path == "/about" ->
        "Sobre Nosotros"
      current_path == "/what_we_do" ->
        "Que hacemos?"
    end
  end
end
