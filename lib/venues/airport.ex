defmodule BkkAirway.Venues.Airport do
  @derive Jason.Encoder
  @enforce_keys [:id, :name, :code, :province, :country]
  defstruct [:id, :name, :code, :province, :country]

  defmodule Store do
    use BkkAirway.Storage.Base
  end
  def new(%{name: name, code: code, province: province, country: country}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      code: code,
      province: province,
      country: country
    }
  end
end
