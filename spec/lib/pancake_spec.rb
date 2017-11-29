require_relative '../../pancake_house'

describe Pancake do
  let(:eating_sound) { 'yummy' }
  subject(:pancake) { Pancake.new(eating_sound) }

  describe "#eat" do
    before do
      allow(pancake).to receive(:puts)
    end

    it "makes the eating sound" do
      expect(pancake).to receive(:puts).with(eating_sound)

      pancake.eat
    end
  end
end
