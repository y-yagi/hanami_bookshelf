# frozen_string_literal: true

module Bookshelf
  class Routes < Hanami::Routes
    # Add your routes here. See https://guides.hanamirb.org/routing/overview/ for details.
    root to: "home.index"
    get "/books", to: "books.index"
    get "/books/:id", to: "books.show", as: :show_book
    get "/books/new", to: "books.new"
    post "/books", to: "books.create", as: :create_book
    post "/publishers", to: "publishers.create", as: :create_publisher
    get "/publishers/new", to: "publishers.new"
    get "/publishers/:id", to: "publishers.show", as: :show_publisher
  end
end
