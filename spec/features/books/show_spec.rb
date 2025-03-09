RSpec.feature "Showing a book" do
  let(:books) { Hanami.app["relations.books"] }

  context "when a book matches the given ID" do
    let!(:book_id) do
      books.insert(title: "Test Driven Development", author: "Kent Beck")
    end

    it "shows the book" do
      visit "/books/#{book_id}"

      expect(page).to have_content "Test Driven Development"
      expect(page).to have_content "Kent Beck"
    end
  end

  context "when no book matches the given ID" do
    it "returns not found" do
      visit "/books/#{books.max(:id).to_i + 1}"

      expect(page.status_code).to eq 404
    end
  end
end
