require 'rails_helper'

RSpec.describe Tenant, type: :model do
  it 'has organization industry type' do
    expect(Tenant.new.sector).to be_true
  end
end
