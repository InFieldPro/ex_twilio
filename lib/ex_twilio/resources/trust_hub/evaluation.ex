defmodule ExTwilio.TrustHub.Evaluation do
  defstruct sid: nil,
    account_sid: nil,
    policy_sid: nil,
    customer_profile_sid: nil,
    status: nil,
    date_created: nil,
    url: nil

  use ExTwilio.Resource,
    import: [
      :stream,
      :all,
      :find,
      :create
    ]

  def parents, do: [
    %ExTwilio.Parent{module: ExTwilio.TrustHub.CustomerProfile, key: :customer_profile_sid},
    %ExTwilio.Parent{module: ExTwilio.TrustHub.TrustProduct, key: :trust_product_sid}
  ]
end
