# frozen_string_literal: true

module Bookshelf
  module Views
    module Books
      class New < Bookshelf::View
        include Deps["repos.publisher_repo"]

        expose :publishers do
          publisher_repo.publishers.map { |p| [p[:name], p[:id]] }.to_h
        end
      end
    end
  end
end
