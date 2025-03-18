# frozen_string_literal: true

module Bookshelf
  module Relations
    class Books < Bookshelf::DB::Relation
      schema :books, infer: true do
        associations do
          belongs_to :publisher
        end
      end

      use :pagination
      per_page 5

      def order_by_latest
        order(self[:id].desc)
      end
    end
  end
end
