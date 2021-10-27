defmodule BkkAirway.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      BkkAirway.Venues.Airport.Store,
      BkkAirway.Materials.Scheduler.Store,
      BkkAirway.Materials.Aircraft.Store,
      BkkAirway.Materials.Booking.Store,
      BkkAirway.Materials.Boarding.Store,
      BkkAirway.Materials.Flight.Store,
      BkkAirway.Attendees.CabinCrew.Store,
      BkkAirway.Attendees.Pessenger.Store,
      BkkAirway.Attendees.Pilot.Store,
      # Starts a worker by calling: Skool.Worker.start_link(arg)
      {Plug.Cowboy, scheme: :http, plug: BkkAirway.Router, port: 4040}
      # {Skool.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BkkAirway.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
