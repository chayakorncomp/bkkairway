defmodule BkkAirway.Materials.Booking do
  @enforce_keys [:id, :booking_no, :pessenger]
  defstruct [:id, :booking_no, :pessenger]

  defmodule Store do
    use BkkAirway.Storage.Base
  end

  def new(pessenger, %{booking_no: booking_no}) do
    %__MODULE__{
      id: UUID.uuid4(),
      pessenger: pessenger,
      booking_no: booking_no
    }
  end
end
