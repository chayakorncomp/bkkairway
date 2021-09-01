defmodule BkkAirway.Materials.Aicraft do
    @enforce_keys [:code, :manufacturer, :model]
    defstruct [:code, :manufacturer, :model]
    
    def new(%{code: code, manufacturer: manufacturer, model: model}) do
      %__MODULE__{
        code: code,
        manufacturer: manufacturer,
        model: model
      }
    end
  end