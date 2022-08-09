defmodule ExTwilio.ProgrammableMessaging.BrandRegistration do
  defstruct sid: nil,
    account_sid: nil,
    customer_profile_bundle_sid: nil,
    a2p_profile_bundle_sid: nil,
    date_created: nil,
    date_updated: nil,
    brand_type: nil,
    status: nil,
    tcr_id: nil,
    failure_reason: nil,
    url: nil,
    brand_score: nil,
    brand_feedback: nil,
    identity_status: nil,
    russell_3000: nil,
    government_entity: nil,
    tax_exempt_status: nil,
    skip_automatic_sec_vet: nil,
    mock: nil,
    links: nil

  use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :update
      ]

  def resource_name, do: "a2p/BrandRegistrations"
end
