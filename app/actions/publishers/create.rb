# frozen_string_literal: true

module Bookshelf
  module Actions
    module Publishers
      class Create < Bookshelf::Action
        include Deps["repos.publisher_repo"]

        params do
          required(:publisher).hash do
            required(:name).filled(:string)
          end
        end

        def handle(request, response)
          if request.params.valid?
            publisher = publisher_repo.create(request.params[:publisher])

            response.flash[:notice] = "publisher created"
            response.redirect_to routes.path(:show_publisher, id: publisher[:id])
          else
            response.flash.now[:alert] = "Could not create publisher"
          end
        end
      end
    end
  end
end
