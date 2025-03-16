# frozen_string_literal: true

module Bookshelf
  module Publishers
    class Create < Bookshelf::Operation
      include Deps["repos.publisher_repo"]

      def call(attrs)
        attrs = step validate(attrs)
        publisher = step create(attrs)
        publisher
      end

      private

      def validate(attrs)
        if attrs.nil? || attrs[:name].nil? || attrs[:name].gsub(/[[:space:]]/, "").empty?
          Failure([:invalid, "name should not be empty"])
        else
          Success(attrs)
        end
      end

      def create(attrs)
        Success(publisher_repo.create(attrs))
      end
    end
  end
end
