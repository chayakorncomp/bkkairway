defmodule BkkAirway.Materials do
  alias BkkAirway.Materials
  alias Materials.Scheduler
  alias Materials.Aircraft
  alias Materials.Booking
  alias Materials.Boarding
  alias Materials.Flight

  defdelegate new_schedule(params),
    to: Scheduler,
    as: :new

  defdelegate add_schedule(airport),
    to: Scheduler.Store,
    as: :add

  defdelegate all_schedule(),
    to: Scheduler.Store,
    as: :all

  defdelegate get_schedule(id),
    to: Scheduler.Store,
    as: :get

  defdelegate new_aircraft(params),
    to: Aircraft,
    as: :new

  defdelegate add_aircraft(aircraft),
    to: Aircraft.Store,
    as: :add

  defdelegate all_aircrafts(),
    to: Aircraft.Store,
    as: :all

  defdelegate update_aircraft(aircarft, params), to: Aircraft.Store, as: :update

  defdelegate delete_aircraft(id), to: Aircraft.Store, as: :delete

  defdelegate get_aircraft(id),
    to: Aircraft.Store,
    as: :get

  defdelegate new_booking(pessager, params),
    to: Booking,
    as: :new

  defdelegate add_booking(booking),
    to: Booking.Store,
    as: :add

  defdelegate update_booking(booking, params),
    to: Booking.Store,
    as: :update

  defdelegate delete_booking(id), to: Booking.Store, as: :delete

  defdelegate all_bookings(),
    to: Booking.Store,
    as: :all

  defdelegate get_booking(id),
    to: Booking.Store,
    as: :get

  defdelegate new_boarding(pessenger, boarding),
    to: Boarding,
    as: :new

  defdelegate add_boarding(boarding),
    to: Boarding.Store,
    as: :add

  defdelegate update_boarding(boarding, params), to: Boarding.Store, as: :update

  defdelegate delete_boarding(id), to: Boarding.Store, as: :delete

  defdelegate all_boardings(),
    to: Boarding.Store,
    as: :all

  defdelegate get_boarding(id),
    to: Boarding.Store,
    as: :get

  defdelegate new_flight(flight, airport, airport, schdule, aircraft),
    to: Flight,
    as: :new

  defdelegate delete_flight(id), to: Flight.Store, as: :delete

  defdelegate update_fligt(flight, params), to: Flight.Store, as: :update

  defdelegate add_flight(flight),
    to: Flight.Store,
    as: :add

  defdelegate all_flights(),
    to: Flight.Store,
    as: :all

  defdelegate get_flight(id),
    to: Flight.Store,
    as: :get
end
