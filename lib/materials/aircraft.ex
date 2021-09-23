defmodule BkkAirway.Materials.Aircraft do
  @enforce_keys [:id, :code, :manufacturer, :model]
  defstruct [:id, :code, :manufacturer, :model]

  defmodule Store do
    use BkkAirway.Storage.Base
  end

  def new(%{code: code, manufacturer: manufacturer, model: model}) do
    %__MODULE__{
      id: UUID.uuid4(),
      code: code,
      manufacturer: manufacturer,
      model: model
    }
  end
end
