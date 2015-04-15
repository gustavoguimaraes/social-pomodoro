FactoryGirl.define do
  factory :image do
    position 0
    image { spec_image('1.png') }
    imageable nil

    factory :image_of_event do
      imageable { create(:event) }
    end
  end
end
