# BkkAirway

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bkk_airway` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bkk_airway, "~> 0.1.0"}
  ]
end
```
+ Venues
  + Airport
    + name:string
    + code:string
    + province:string
    + country:string
+ Materials
  + Flight
    + flight_code:string
    + origin:references:Airport
    + departure:references:Airport
    + schedule:references:Scheduler
    + aircraft:references:Aircraft
  + AirCraft
    + code:string
    + manufacturer:string
    + model:string
  + Scheduler
    + state:string
    + departure:date
    + arrival:date
  + Booking
    + booking_no:string
    + pessenger:reference:Pessenger
  + Boarding
    + booking:references:booking
    + pessenger:references:Pessenger
    + seat_number:string
+ Attendees
  + Pilot
    + name:string
    + position:string
    + flight:references:Flight
  + CabinCrew
    + name:string
    + position:string
    + flight:references:Flight
  + Pessenger
    + name:string
    + age:number
    + passport_number:string

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/bkk_airway](https://hexdocs.pm/bkk_airway).

