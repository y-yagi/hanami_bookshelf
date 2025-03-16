# frozen_string_literal: true

RSpec.describe Bookshelf::Actions::Publishers::Create do
  let(:params) { { name: "Publisher 1" } }

  it "works" do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
