# frozen_string_literal: true

module Bookshelf
  module Actions
    module Publishers
      class Show < Bookshelf::Action
        def handle(request, response)
          response.render(view, id: request.params[:id])
        end
      end
    end
  end
end
