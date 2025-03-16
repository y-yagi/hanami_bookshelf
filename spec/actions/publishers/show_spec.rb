# frozen_string_literal: true

RSpec.feature "Showing a publisher" do
  let(:publishers) { Hanami.app["relations.publishers"] }

  context "when a publisher matches the given ID" do
    let!(:publisher_id) do
      publishers.insert(name: "Addison-Wesley Professional")
    end

    it "shows the publisher" do
      visit "/publishers/#{publisher_id}"

      expect(page).to have_content "Addison-Wesley Professional"
    end
  end
end
