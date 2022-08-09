defmodule ExTwilio.TrustHub.Policy do
  defstruct sid: nil,
    friendly_name: nil,
    url: nil,
    requirements: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create
    ]
end
