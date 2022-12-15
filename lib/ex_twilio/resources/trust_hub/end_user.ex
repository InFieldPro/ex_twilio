defmodule ExTwilio.TrustHub.EndUser do
  defstruct sid: nil,
  friendly_name: nil,
  account_sid: nil,
  url: nil,
  date_created: nil,
  date_updated: nil,
  attributes: nil

  @type t :: %__MODULE__{
    sid: String.t(),
    friendly_name: String.t(),
    account_sid: String.t(),
    url: String.t(),
    date_created: String.t(),
    date_updated: String.t(),
    attributes: map()
  }

    use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :destroy
      ]
end
