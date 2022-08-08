defmodule ExTwilio.TrustHub.EndUserType do
  defstruct sid: nil,
    friendly_name: nil,
    machine_name: nil,
    url: nil,
    fields: nil

    use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find
      ]
end
