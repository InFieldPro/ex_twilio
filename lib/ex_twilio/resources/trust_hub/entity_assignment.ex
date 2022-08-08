defmodule ExTwilio.TrustHub.EntityAssignment do
  defstruct sid: nil,
    customer_profile_sid: nil,
    account_sid: nil,
    object_sid: nil,
    date_created: nil,
    url: nil

    use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :destroy
      ]

    def parents, do: [
      %ExTwilio.Parent{module: ExTwilio.TrustHub.CustomerProfile, key: :customer_profile_sid},
      %ExTwilio.Parent{module: ExTwilio.TrustHub.TrustProduct, key: :trust_product_sid}
    ]
end
