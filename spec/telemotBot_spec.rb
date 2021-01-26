require_relative '../lib/inspire'
require_relative '../lib/joke'

RSpec.describe Inspire do
  describe '#new_request' do
    let(:request) { Inspire.new }
    let(:requestJson) { request.new_request }

    it 'returns a json file when the request is sucessful' do
      expect(requestJson.class).to eql(Array)
    end

    it 'returns an array' do
      expect(requestJson.length).not_to be_nil
    end
  end

  describe '#select_random' do
    let(:random) { Inspire.new }
    let(:requestRandom) { random.select_random }

    it 'returns a Hash' do
      expect(requestRandom.class).to eql(Hash)
    end

    it 'return a key and a value' do
      expect(requestRandom.length).to eql(2)
    end
  end
end

RSpec.describe Jokes do
  describe '#new_request' do
    let(:request) { Jokes.new }
    let(:requestJson) { request.new_request }
    it 'returns a hash when the request is sucessful' do
      expect(requestJson.class).to eql(Hash)
    end
    it 'returns an array' do
      expect(requestJson.length).to eql(1)
    end
  end
end
