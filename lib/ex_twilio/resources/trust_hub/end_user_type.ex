defmodule ExTwilio.TrustHub.EndUserType do
  defstruct sid: nil,
    friendly_name: nil,
    machine_name: nil,
    url: nil,
    fields: nil

    @type t :: %__MODULE__{
      friendly_name: String.t(),
      url: String.t(),
      fields: list()
    }

    use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find
      ]
end
