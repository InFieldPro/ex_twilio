defmodule ExTwilio.TrustHub.TrustProduct do
  defstruct sid: nil,
    account_sid: nil,
    policy_sid: nil,
    friendly_name: nil,
    status: nil,
    email: nil,
    status_callback: nil,
    valid_until: nil,
    date_created: nil,
    date_updated: nil,
    url: nil,
    links: nil

    use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :destroy
      ]
end
