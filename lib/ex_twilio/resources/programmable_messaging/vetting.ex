defmodule ExTwilio.ProgrammableMessaging.Vetting do
  defstruct brand_sid: nil,
    vetting_provider: nil,
    vetting_id: nil

  use ExTwilio.Resource,
      import: [
        :stream,
        :all,
        :find,
        :create,
        :update
      ]

  def parents,
  do: [
    %ExTwilio.Parent{module: ExTwilio.ProgrammableMessaging.BrandRegistration, key: :brand_sid}
  ]
end
