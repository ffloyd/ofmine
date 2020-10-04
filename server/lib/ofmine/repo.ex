defmodule Ofmine.Repo do
  use Ecto.Repo,
    otp_app: :ofmine,
    adapter: Ecto.Adapters.Postgres
end
