defmodule PhxStarter.Repo do
  use Ecto.Repo,
    otp_app: :phx_starter,
    adapter: Ecto.Adapters.Postgres
end
