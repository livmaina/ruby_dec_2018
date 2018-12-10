require_relative 'apple'
RSpec.describe AppleTree do 
    before (:each) do 
        @apple1 = AppleTree.new(7)
    end

    it 'has an age attribute with getter and setter method' do
        expect(@apple1.age).to eq(7)
    end
    it 'has height attribute with getter method only' do
        expect{@apple1.height}.to raise_error(NoMethodError)
    end
    it 'has apple count attribute with a getter method only' do
        expect{@apple1.apple_count}.to raise_error(NoMethodError) 
    end        
    it 'has method that adds one year to age attribute' do 
        expect(@apple1.year_gone_by).to eq(8)
    end 
    it 'has method pick_apples that takes all apples off the tree' do
        expect(@apple1.pick_apples).to eq(0)
    end
end