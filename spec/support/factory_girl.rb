RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

def spec_image(filename)
  File.read(File.join(Rails.root, 'spec/images', filename))
end
