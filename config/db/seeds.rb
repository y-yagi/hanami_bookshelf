# This seeds file should create the database records required to run the app.
#
# The code should be idempotent so that it can be executed at any time.
#
# To load the seeds, run `hanami db seed`. Seeds are also loaded as part of `hanami db prepare`.

# For example, if you have appropriate repos available:
#
#   category_repo = Hanami.app["repos.category_repo"]
#   category_repo.create(title: "General")
#
# Alternatively, you can use relations directly:
#
#   categories = Hanami.app["relations.categories"]
#   categories.insert(title: "General")

publishers = Hanami.app["relations.publishers"]
publisher_id = publishers.insert(name: "Addison-Wesley Professional")

books =  Hanami.app["relations.books"]
books.insert(title: "Practical Object-Oriented Design in Ruby", author: "Sandi Metz", price: 1000, publisher_id:)
books.insert(title: "Test Driven Development", author: "Kent Beck", price: 20000, publisher_id:)
