# frozen_string_literal: true

module Bookshelf
  module Views
    module Publishers
      class Show < Bookshelf::View
        include Deps["repos.publisher_repo"]

        expose :publisher do |id:|
          publisher_repo.get(id)
        end
      end
    end
  end
end
