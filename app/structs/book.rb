# frozen_string_literal: true

require "bigdecimal"

module Bookshelf
  module Structs
    class Book < Bookshelf::DB::Struct
      TAX = BigDecimal("1.10")

      def price_with_tax
        (price * TAX).to_i
      end
    end
  end
end
