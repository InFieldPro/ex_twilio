defmodule ExTwilio.Message do
  @moduledoc """
  Represents an Message resource in the Twilio API.

  - [Twilio docs](https://www.twilio.com/docs/sms/api/message-resource)

  ## Examples

  Here is an example of sending an SMS message:

      {target_number, twilio_number_you_own, body} = {"+12223334444", "+19223334444", "Hello World"}

      ExTwilio.Message.create(to: target_number, from: twilio_number_you_own, body: body)

  """

  defstruct sid: nil,
            date_created: nil,
            date_updated: nil,
            date_sent: nil,
            account_sid: nil,
            from: nil,
            to: nil,
            body: nil,
            num_media: nil,
            num_segments: nil,
            status: nil,
            error_code: nil,
            error_message: nil,
            direction: nil,
            price: nil,
            price_unit: nil,
            api_version: nil,
            uri: nil,
            subresource_uri: nil,
            messaging_service_sid: nil

  @type t() :: %__MODULE__{
          sid: String.t(),
          date_created: String.t(),
          date_updated: String.t(),
          date_sent: String.t(),
          account_sid: String.t(),
          from: String.t(),
          to: String.t(),
          body: String.t(),
          num_media: String.t(),
          num_segments: String.t(),
          status: String.t(),
          error_code: String.t(),
          error_message: String.t(),
          direction: String.t(),
          price: String.t(),
          price_unit: String.t(),
          api_version: String.t(),
          uri: String.t(),
          subresource_uri: String.t(),
          messaging_service_sid: String.t()
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
