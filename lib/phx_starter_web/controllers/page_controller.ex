defmodule PhxStarterWeb.PageController do
  use PhxStarterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
