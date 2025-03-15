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
    end
  end
end
