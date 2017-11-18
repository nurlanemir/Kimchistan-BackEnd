require 'coveralls'
Coveralls.wear!
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

require 'stripe_mock'

describe KimchistanBackend do
  let(:stripe_helper) { StripeMock.create_test_helper }
  before { StripeMock.start }
  after { StripeMock.stop }

  it "creates a stripe customer" do

    # This doesn't touch stripe's servers nor the internet!
    # Specify :source in place of :card (with same value) to return customer with source data
    customer = Stripe::Customer.create({
                                           email: 'johnny@appleseed.com',
                                           card: stripe_helper.generate_card_token
                                       })
    expect(customer.email).to eq('johnny@appleseed.com')
  end
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end