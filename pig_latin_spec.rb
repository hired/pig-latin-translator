$:.unshift File.dirname(__FILE__)

require 'rspec'
require 'pig_latin'

describe '.to_pig_latin' do

  it 'translates words starting with consonants' do
    expect('pig'.to_pig_latin).to eq('igpay')
    expect('banana'.to_pig_latin).to eq('ananabay')
    expect('trash'.to_pig_latin).to eq('ashtray')
    expect('glove'.to_pig_latin).to eq('oveglay')
    expect('christ'.to_pig_latin).to eq('istchray')

  end

  it 'translate words starting with vowels' do
    expect('egg'.to_pig_latin).to eq('eggyay')
  end
end