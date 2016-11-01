describe Chroma::Color do
  let(:red)    { 'red'.paint }
  let(:black)  { 'black'.paint }
  let(:white)  { 'white'.paint }
  let(:yellow) { 'yellow'.paint }

  describe '#dark?' do
    it 'returns true for dark colors' do
      expect(red).to   be_dark
      expect(black).to be_dark
    end

    it 'returns false for light colors' do
      expect(white).to_not  be_dark
      expect(yellow).to_not be_dark
    end
  end

  describe '#light?' do
    it 'returns false for dark colors' do
      expect(red).to_not   be_light
      expect(black).to_not be_light
    end

    it 'returns true for light colors' do
      expect(white).to  be_light
      expect(yellow).to be_light
    end
  end

  describe '#alpha' do
    it 'returns the correct alpha value' do
      expect('rgba(255, 0, 0, 0.75)'.paint.alpha).to eq 0.75
      expect('#ff000080'.paint.alpha).to             be_within(0.01).of(0.5)
      expect('transparent'.paint.alpha).to           eq 0
      expect('hsla(0, 100%, 50%, 0'.paint.alpha).to  eq 0
      expect(red.alpha).to                           eq 1
    end
  end

  describe '#red' do
    it 'returns the correct red value' do
      expect('rgba(255, 0, 0, 0.75)'.paint.red).to eq 255
      expect('#ff000080'.paint.red).to             eq 255
      expect('transparent'.paint.red).to           eq 0
      expect('hsla(0, 100%, 50%, 0'.paint.red).to  eq 255.0
      expect(red.red).to                           eq 255
    end
  end

  describe '#green' do
    it 'returns the correct green value' do
      expect('rgba(255, 128, 0, 0.75)'.paint.green).to eq 128
      expect('#ffaa0080'.paint.green).to               eq 170
      expect('transparent'.paint.green).to             eq 0
      expect('hsla(168, 100%, 50%, 0'.paint.green).to  eq 255.0
      expect(yellow.green).to                          eq 255
    end
  end

  describe '#blue' do
    it 'returns the correct blue value' do
      expect('rgba(255, 0, 75, 0.75)'.paint.blue).to eq 75
      expect('#ff00cc80'.paint.blue).to              eq 204
      expect('transparent'.paint.blue).to            eq 0
      expect('hsla(266, 100%, 25%, 0'.paint.blue).to eq 127.5
      expect(black.blue).to                          eq 0
    end
  end

  describe '#brightness' do
    it 'returns the correct brightness' do
      expect(red.brightness).to    eq 76.245
      expect(black.brightness).to  eq 0
      expect(white.brightness).to  eq 255
      expect(yellow.brightness).to eq 225.93
    end
  end
end
