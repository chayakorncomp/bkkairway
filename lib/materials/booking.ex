defmodule BkkAirway.Materials.Booking do
  @derive Jason.Encoder
  @enforce_keys [:id, :booking_no, :pessenger]
  defstruct [:id, :booking_no, :pessenger]

  defmodule Store do
    use BkkAirway.Storage.Base
  end

  alias BkkAirway.Storage.Association
  def new(pessenger, %{booking_no: booking_no}) do
    %__MODULE__{
      id: UUID.uuid4(),
      pessenger: pessenger,
      booking_no: booking_no,
      pessenger: Association.new(pessenger)
    }
  end
end
