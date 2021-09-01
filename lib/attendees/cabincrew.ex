defmodule BkkAirway.Attendees.CabinCrew do
    @enforce_keys [:name, :position, :flight ]
    defstruct [:name, :position, :flight ]
    
    def new(flight, %{name: name, position: position}) do
      %__MODULE__{
        flight: flight,
        name: name,
        position: position
      }
    end
  end