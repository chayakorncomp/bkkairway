defmodule BkkAirway.Materials.Flight do
  @derive Jason.Encoder
  @enforce_keys [:id, :flight_code, :origin, :departure, :schedule, :aircraft]
  defstruct [:id, :flight_code, :origin, :departure, :schedule, :aircraft]
  alias BkkAirway.Storage.Association
  defmodule Store do
    use BkkAirway.Storage.Base
  end

  def new(%{flight_code: flight_code}, origin, departure, schedule, aircraft) do
    %__MODULE__{
      id: UUID.uuid4(),
      flight_code: flight_code,
      origin: Association.new(origin),
      departure: Association.new(departure),
      schedule: Association.new(schedule),
      aircraft: Association.new(aircraft),
    }
  end
end
