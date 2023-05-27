require 'rails_helper'

RSpec.describe CharacterFacade do
  describe 'instance methods' do
    it 'makes no more than 25 characters' do
      facade = CharacterFacade.new("Fire+Nation")

      result = facade.characters
      
      expect(result).to be_an(Array)
      expect(result.count).to be <= 25

      result.each do |character|
        expect(character).to be_a(Character)
      end

      facade = CharacterFacade.new("Air Nomads")

      expect(result).to be_an(Array)
      expect(result.count).to be <= 25

      result.each do |character|
        expect(character).to be_a(Character)
      end
    end

    it 'can count characters' do
      facade = CharacterFacade.new("Fire+Nation")

      expect(facade.total_characters).to be(97)

      facade = CharacterFacade.new("Air+Nomads")

      expect(facade.total_characters).to be(15)
    end
  end
end