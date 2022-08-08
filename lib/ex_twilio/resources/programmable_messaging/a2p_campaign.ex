defmodule ExTwilio.ProgrammableMessaging.A2PCampaign do
    defstruct sid: nil,
        account_sid: nil,
        brand_registration_sid: nil,
        messaging_service_sid: nil,
        description: nil,
        message_samples: nil,
        us_app_to_person_usecase: nil,
        has_embedded_links: nil,
        has_embedded_phone: nil,
        campaign_status: nil,
        campaign_id: nil,
        is_externally_registered: nil,
        rate_limits: nil,
        date_created: nil,
        date_updated: nil,
        url: nil,
        mock: false

    use ExTwilio.Resource,
        import: [
          :stream,
          :all,
          :find,
          :create,
          :destroy
        ]

    def parents,
    do: [
      %ExTwilio.Parent{module: ExTwilio.ProgrammableMessaging.Service, key: :service}
    ]

    def resource_name, do: "Compliance/Usa2p"
end
