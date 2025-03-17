# frozen_string_literal: true

module Bookshelf
  module Publishers
    class SendWelcomeEmail < Bookshelf::Operation
      include Deps[
        "email_client"
      ]

      def call(name:, email_address:)
        Success(email_client.deliver(
          to: email_address,
          subject: "Welcome!",
          text_body: "<p>Welcome to Bookshelf #{name}!</p>",
          html_body:  "Welcome to Bookshelf #{name}!"
        ))
      end
    end
  end
end
