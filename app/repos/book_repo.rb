# frozen_string_literal: true

module Bookshelf
  module Repos
    class BookRepo < Bookshelf::DB::Repo
      def all_by_title(page:, per_page:)
        books
          .order(books[:title].asc)
          .page(page)
          .per_page(per_page)
          .to_a
      end

      def get(id)
        books.by_pk(id).one!
      end

      def create(attributes)
        books.changeset(:create, attributes).commit
      end

      def latest(page: 1)
        books.order_by_latest.page(page).to_a
      end
    end
  end
end
