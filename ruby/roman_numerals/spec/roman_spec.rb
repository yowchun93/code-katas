require 'spec_helper'

require_relative '../roman.rb'

RSpec.describe Roman do
  it 'returns I for 1' do
    expect(Roman.convert_to_roman(1)).to eq("I")
  end

  it 'returns II for 2' do
    expect(Roman.convert_to_roman(2)).to eq("II")
  end

  it 'returns IV for 4' do
    expect(Roman.convert_to_roman(4)).to eq("IV")
  end

  it 'returns V for 5' do
    expect(Roman.convert_to_roman(5)).to eq("V")
  end

  it 'returns X for 10' do
    expect(Roman.convert_to_roman(10)).to eq("X")
  end

  it 'returns X for 13' do
    expect(Roman.convert_to_roman(13)).to eq("XIII")
  end
end