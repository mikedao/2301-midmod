class CharacterService
  def self.get_characters(nation)
    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=#{nation}&perPage=150")
    JSON.parse(response.body, symbolize_names: :true)
  end
end