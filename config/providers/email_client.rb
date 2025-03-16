Hanami.app.register_provider(:email_client) do
  prepare do
    class EmailClient
      def deliver(*)
        true
      end
    end
  end

  start do
    client = EmailClient.new

    register "email_client", client
  end
end
