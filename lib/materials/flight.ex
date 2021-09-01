defmodule BkkAirway.Materials.Flight do
    @enforce_keys [:flight_code, :origin, :departure, :schedule, :aircraft]
    defstruct [:flight_code, :origin, :departure, :schedule, :aircraft]
    
    def new(%{flight_code: flight_code}, origin, departure, schedule, aircraft) do
      %__MODULE__{
        flight_code: flight_code,
        origin: origin,
        departure: departure,
        schedule: schedule,
        aircraft: aircraft
      }
    end
  end