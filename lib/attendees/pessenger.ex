defmodule BkkAirway.Attendees.Pessenger do
  @derive Jason.Encoder
  @enforce_keys [:id, :name, :age, :passport_number]
  defstruct [:id, :name, :age, :passport_number]

  defmodule Store do
    use BkkAirway.Storage.Base
  end

  def new(%{name: name, age: age, passport_number: passport_number}) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      age: age,
      passport_number: passport_number
    }
  end
end
