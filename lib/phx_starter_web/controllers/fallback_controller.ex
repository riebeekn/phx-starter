defmodule PhxStarterWeb.FallbackController do
  use PhxStarterWeb, :controller

  def call(conn, {:error, :unauthorized}) do
    conn
    |> put_status(:forbidden)
    |> put_view(PhxStarterWeb.ErrorView)
    |> render(:"403")
  end
end
