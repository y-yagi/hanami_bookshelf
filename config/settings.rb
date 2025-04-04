# frozen_string_literal: true

module Bookshelf
  class Settings < Hanami::Settings
    # Define your app settings here, for example:
    #
    # setting :my_flag, default: false, constructor: Types::Params::Bool
    setting :session_secret, constructor: Types::String
    setting :sendgrid_api_key, constructor: Types::String
  end
end
