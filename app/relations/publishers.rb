# frozen_string_literal: true

module Bookshelf
  module Relations
    class Publishers < Bookshelf::DB::Relation
      schema :publishers, infer: true do
        associations do
          has_many :books
        end
      end
    end
  end
end
