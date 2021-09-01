defmodule BkkAirway.Materials.Boarding do
    @enforce_keys [:booking_no, :pessenger, :seat_number ]
    defstruct [:booking_no, :pessenger, :seat_number]
    
    def new(pessenger, %{booking_no: booking_no, seat_number: seat_number}) do
      %__MODULE__{
        pessenger: pessenger,
        booking_no: booking_no,
        seat_number: seat_number
      }
    end
  end