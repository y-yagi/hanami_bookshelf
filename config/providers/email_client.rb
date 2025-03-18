Hanami.app.register_provider(:email_client) do
  prepare do
    class SendgridClient
      def initialize(api_key:, default_from:)
        @api_key = api_key
        @default_from = default_from
      end

      def deliver(*)
        true
      end
    end
  end

  start do
    client = SendgridClient.new(
      api_key: target["settings"].sendgrid_api_key,
      default_from: "no-reply@bookshelf.example.com"
    )

    register "email_client", client
  end
end
