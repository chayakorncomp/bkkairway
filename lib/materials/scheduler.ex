defmodule BkkAirway.Materials.Scheduler do
  @enforce_keys [:id, :state, :departure, :arrival]
  defstruct [:id, :state, :departure, :arrival]

  defmodule Store do
    use BkkAirway.Storage.Base
  end
  def new(%{state: state, departure: departure, arrival: arrival}) do
    %__MODULE__{
      id: UUID.uuid4(),
      state: state,
      departure: departure,
      arrival: arrival
    }
  end

end
