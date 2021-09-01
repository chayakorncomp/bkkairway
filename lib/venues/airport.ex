defmodule BkkAirway.Venues.Airport do
    @enforce_keys [:name, :code, :province,:country]
    defstruct [:name, :code, :province, :country]
    
    def new( %{name: name, code: code, province: province, country: country}) do
      %__MODULE__{
        name: name,
        code: code,
        province: province,
        country: country
      }
    end
  end