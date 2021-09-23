defmodule BkkAirway.Attendees do
  alias BkkAirway.Attendees
  alias Attendees.CabinCrew
  alias Attendees.Pessenger
  alias Attendees.Pilot

  defdelegate new_cabincrew(flight, crew),
    to: CabinCrew,
    as: :new

  defdelegate add_cabincrew(crew),
    to: CabinCrew.Store,
    as: :add

  defdelegate all_cabincrews(),
    to: CabinCrew.Store,
    as: :all

  defdelegate get_cabincrew(id),
    to: CabinCrew.Store,
    as: :get

  defdelegate new_pessenger(pessenger),
    to: Pessenger,
    as: :new

  defdelegate add_pessenger(pessenger),
    to: Pessenger.Store,
    as: :add

  defdelegate all_pessengers(),
    to: Pessenger.Store,
    as: :all

  defdelegate get_pessenger(id),
    to: Pessenger.Store,
    as: :get

  defdelegate new_pilot(flight, pilot),
    to: Pilot,
    as: :new

  defdelegate add_pilot(pilot),
    to: Pilot.Store,
    as: :add

  defdelegate all_pilots(),
    to: Pilot.Store,
    as: :all

  defdelegate get_pilot(id),
    to: Pilot.Store,
    as: :get
end
