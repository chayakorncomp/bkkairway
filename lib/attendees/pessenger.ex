defmodule BkkAirway.Attendees.Pessenger do
    @enforce_keys [:name, :age, :passport_number ]
    defstruct [:name, :age, :passport_number ]
    
    def new( %{name: name, age: age, passport_number: passport_number}) do
      %__MODULE__{
        name: name,
        age: age,
        passport_number: passport_number
      }
    end
  end