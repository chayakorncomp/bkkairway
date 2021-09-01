defmodule BkkAirway.Venues do
    alias BkkAirway.Venues
    
    defdelegate new_airport(params), 
      to: Venues.Airport,
      as: :new
  end