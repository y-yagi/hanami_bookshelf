# frozen_string_literal: true

module Bookshelf
  module Actions
    module Publishers
      class Create < Bookshelf::Action
        include Deps["publishers.create"]

        def handle(request, response)
          case create.call(request.params[:publisher])
          in Success(publisher)
            response.flash[:notice] = "publisher created"
            response.redirect_to routes.path(:show_publisher, id: publisher.id)
          in Failure[:invalid, validation]
            response.flash.now[:alert] = "Could not create publisher: #{validation}"
          end
        end
      end
    end
  end
end
