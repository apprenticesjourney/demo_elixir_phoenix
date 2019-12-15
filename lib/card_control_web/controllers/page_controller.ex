defmodule CardControlWeb.PageController do
  use CardControlWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
