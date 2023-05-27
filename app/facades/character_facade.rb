class CharacterFacade
  def initialize(nation)
    @nation = nation
  end

  def json_characters
    @_json_characters ||= CharacterService.get_characters(@nation)
  end

  def characters
    json_characters.first(25).map do |character_data|
      Character.new(character_data)
    end
  end

  def total_characters
    json_characters.count
  end

end