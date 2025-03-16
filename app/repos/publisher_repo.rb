# frozen_string_literal: true

module Bookshelf
  module Repos
    class PublisherRepo < Bookshelf::DB::Repo
      def get(id)
        publishers.by_pk(id).one!
      end

      def create(attributes)
        publishers.changeset(:create, attributes).commit
      end
    end
  end
end
