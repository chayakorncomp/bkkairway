defmodule BkkAirway.Attendees.CabinCrew do
  @derive Jason.Encoder
  @enforce_keys [:id ,:name, :position, :flight]
  defstruct [:id, :name, :position, :flight]

  defmodule Store do
    use BkkAirway.Storage.Base
  end

  def new(flight, %{name: name, position: position}) do
    %__MODULE__{
      id: UUID.uuid4(),
      flight: flight,
      name: name,
      position: position
    }
  end
end
