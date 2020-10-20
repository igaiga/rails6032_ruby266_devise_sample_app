require "rails_helper"

RSpec.describe "members", type: :system do
  include Devise::Test::IntegrationHelpers
  fixtures :users
  it "test" do
    sign_in users(:one)
    visit members_index_path
    expect(page).to have_text("Members#index")
  end
end
