require "rails_helper"

# Testing factories: http://robots.thoughtbot.com/testing-your-factories-first
FactoryGirl.factories.map(&:name).each do |factory_name|
  describe "#{factory_name} factory" do
    let(:factory) { build(factory_name) }

    # generate errors
    before { factory.valid? }

    it "is valid" do
      expect(factory.errors.full_messages).to be_empty
      expect(factory).to be_valid
    end
  end
end

