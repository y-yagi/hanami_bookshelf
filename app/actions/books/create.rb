# frozen_string_literal: true

module Bookshelf
  module Actions
    module Books
      class Create < Bookshelf::Action
        include Deps["repos.book_repo"]

        params do
          required(:book).hash do
            required(:publisher_id).filled(:integer)
            required(:title).filled(:string)
            required(:author).filled(:string)
            required(:price).filled(:integer)
          end
        end

        def handle(request, response)
          if request.params.valid?
            book = book_repo.create(request.params[:book])

            response.flash[:notice] = "Book created"
            response.redirect_to routes.path(:show_book, id: book[:id])
          else
            response.flash.now[:alert] = "Could not create book"
            # Implicitly re-renders the "new" view
          end
        end
      end
    end
  end
end
