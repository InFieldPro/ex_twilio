defmodule ExTwilio.IncomingPhoneNumber do
  @moduledoc """
  Represents an IncomingPhoneNumber resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/phone-numbers/api/incomingphonenumber-resource)
  """

  defstruct sid: nil,
            account_sid: nil,
            address_sid: nil,
            address_requirements: nil,
            api_version: nil,
            beta: nil,
            capabilities: nil,
            date_created: nil,
            date_updated: nil,
            friendly_name: nil,
            identity_sid: nil,
            phone_number: nil,
            origin: nil,
            sms_application_sid: nil,
            sms_fallback_method: nil,
            sms_fallback_url: nil,
            sms_method: nil,
            sms_url: nil,
            status: nil,
            status_callback: nil,
            status_callback_method: nil,
            trunk_sid: nil,
            uri: nil,
            voice_application_sid: nil,
            voice_caller_id_lookup: nil,
            voice_fallback_method: nil,
            voice_fallback_url: nil,
            voice_method: nil,
            voice_url: nil,
            emergency_status: nil,
            emergency_address_sid: nil

  @type t :: %__MODULE__{
          sid: String.t(),
          account_sid: String.t(),
          address_sid: String.t(),
          address_requirements: String.t(),
          api_version: String.t(),
          beta: boolean(),
          capabilities: map(),
          date_created: String.t(),
          date_updated: String.t(),
          friendly_name: String.t(),
          identity_sid: String.t(),
          phone_number: String.t(),
          origin: String.t(),
          sms_application_sid: String.t(),
          sms_fallback_method: String.t(),
          sms_fallback_url: String.t(),
          sms_method: String.t(),
          sms_url: String.t(),
          status: String.t(),
          status_callback: String.t(),
          status_callback_method: String.t(),
          trunk_sid: String.t(),
          uri: String.t(),
          voice_application_sid: String.t(),
          voice_caller_id_lookup: String.t(),
          voice_fallback_method: String.t(),
          voice_fallback_url: String.t(),
          voice_method: String.t(),
          voice_url: String.t(),
          emergency_status: String.t(),
          emergency_address_sid: String.t()
        }
  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :update,
      :destroy
    ]

  def parents, do: [:account]
end
