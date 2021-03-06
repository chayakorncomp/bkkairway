defmodule BkkAirway.Venues do
  alias BkkAirway.Venues
  alias Venues.Airport
  defdelegate new_airport(params),
    to: Airport,
    as: :new

  defdelegate add_airport(airport),
    to: Airport.Store,
    as: :add

  defdelegate all_airports(),
    to: Airport.Store,
    as: :all

  defdelegate get_airport(id),
    to: Airport.Store,
    as: :get

  defdelegate update_airpot(airport, params), to: Airport.Store,
    as: :update

  defdelegate delete_airpot(id), to: Airport.Store,
    as: :delete
end
