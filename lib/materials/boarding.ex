defmodule BkkAirway.Materials.Boarding do
  @derive Jason.Encoder
  @enforce_keys [:id, :booking_no, :pessenger, :seat_number]
  defstruct [:id, :booking_no, :pessenger, :seat_number]

  defmodule Store do
    use BkkAirway.Storage.Base
  end

  def new(pessenger, %{booking_no: booking_no, seat_number: seat_number}) do
    %__MODULE__{
      id: UUID.uuid4(),
      pessenger: pessenger,
      booking_no: booking_no,
      seat_number: seat_number
    }
  end
end
