require 'rails_helper'

RSpec.describe CharacterService do
  it 'returns us some characters' do
    data = CharacterService.get_characters('Fire+Nation')

    data.each do |character|
      expect(character[:name]).to be_a(String)
      expect(character[:allies]).to be_a(Array)
      expect(character[:enemies]).to be_a(Array)
      expect(character[:affiliation]).to be_a(String)
    end
    
    expect(data.second[:photoUrl]).to be_a(String)
  end
  # Should add one more for a different nation too to make sure.
end