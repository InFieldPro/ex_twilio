defmodule ExTwilio.TrustHub.EndUser do
  defstruct sid: nil,
  friendly_name: nil,
  account_sid: nil,
  url: nil,
  date_created: nil,
  date_updated: nil,
  attributes: nil

    use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :destroy
      ]
end
