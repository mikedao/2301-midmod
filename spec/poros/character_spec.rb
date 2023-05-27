require 'rails_helper'

RSpec.describe Character do
  it 'has attributes' do
    data = {
      allies: ["Fire Nation"],
      enemies: ["Aang"],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
      name: "Afiko",
      affiliation: "Fire Nation"
    }

    member = Character.new(data)

    expect(member.name).to eq("Afiko")
    expect(member.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    expect(member.allies).to eq("Fire Nation")
    expect(member.enemies).to eq("Aang") 
    expect(member.affiliation).to eq("Fire Nation")
  end

  it 'can convert to none' do
    data = {
      allies: [],
      enemies: [],
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
      name: "Afiko",
      affiliation: "Fire Nation"
    }

    member = Character.new(data)
    expect(member.name).to eq("Afiko")
    expect(member.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    expect(member.allies).to eq("None")
    expect(member.enemies).to eq("None") 
    expect(member.affiliation).to eq("Fire Nation")

  end
end