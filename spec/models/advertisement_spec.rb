require 'rails_helper'

RSpec.describe Advertisement, type: :model do
    let(:advertisement) { Advertisement.create!(title: "New Adv Title", copy: "New Adv Copy", price: 15)}
    describe "attributes" do
        it "has title, copy and price attributes" do
            expect(advertisement).to have_attributes(title: "New Adv Title", copy: "New Adv Copy", price: 15)
        end
    end
    
end
