defmodule ExTwilio.AvailablePhoneNumber do
  @moduledoc """
  Represents an AvailablePhoneNumber resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/phone-numbers/api/availablephonenumber-resource)
  """

  defstruct friendly_name: nil,
            phone_number: nil,
            lata: nil,
            rate_center: nil,
            latitude: nil,
            longitude: nil,
            region: nil,
            postal_code: nil,
            iso_country: nil,
            capabilities: nil,
            address_requirements: nil

  @type t :: %__MODULE__{
          address_requirements: String.t(),
          friendly_name: String.t(),
          phone_number: String.t(),
          lata: String.t(),
          longitude: float(),
          latitude: float(),
          rate_center: String.t(),
          postal_code: String.t(),
          iso_country: String.t(),
          capabilities: map()
        }

  use ExTwilio.Resource, import: [:stream, :all]

  def parents, do: [:account]
  def children, do: [:iso_country_code, :type]
end
