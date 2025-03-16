RSpec.feature "Books index" do
  let(:books) { Hanami.app["relations.books"] }
  let(:publishers) { Hanami.app["relations.publishers"] }

  before do
    publisher_id = publishers.insert(name: "Addison-Wesley Professional")
    books.insert(title: "Practical Object-Oriented Design in Ruby", author: "Sandi Metz", publisher_id:)
    books.insert(title: "Test Driven Development", author: "Kent Beck", publisher_id:)
  end

  it "shows a list of books" do
    visit "/books"

    expect(page).to have_selector "li", text: "Test Driven Development, by Kent Beck"
    expect(page).to have_selector "li", text: "Practical Object-Oriented Design in Ruby, by Sandi Metz"
  end
end
