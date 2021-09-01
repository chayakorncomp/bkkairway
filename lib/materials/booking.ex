defmodule BkkAirway.Materials.Booking do
    @enforce_keys [:booking_no, :pessenger ]
    defstruct [:booking_no, :pessenger]
    
    def new(pessenger, %{booking_no: booking_no}) do
      %__MODULE__{
        pessenger: pessenger,
        booking_no: booking_no
      }
    end
  end