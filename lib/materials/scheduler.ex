defmodule BkkAirway.Materials.Scheduler do
    @enforce_keys [:state, :departure, :arrival]
    defstruct [:state, :departure, :arrival]
    
    def new(%{state: state, departure: departure, arrival: arrival}) do
      %__MODULE__{
        state: state,
        departure: departure,
        arrival: arrival
      }
    end
  end