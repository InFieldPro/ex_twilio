defmodule ExTwilio.TrustHub.SupportingDocument do
  defstruct sid: nil,
    account_sid: nil,
    status: nil,
    date_updated: nil,
    friendly_name: nil,
    url: nil,
    date_created: nil,
    attributes: nil,
    type: nil,
    mime_type: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create,
      :destroy,
      :update
    ]
end
