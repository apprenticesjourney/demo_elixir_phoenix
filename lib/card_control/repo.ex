defmodule CardControl.Repo do
  use Ecto.Repo,
    otp_app: :card_control,
    adapter: Ecto.Adapters.Postgres
end
