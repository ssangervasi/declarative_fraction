RSpec.describe DeclarativeFraction do
  it 'has a version number' do
    expect(DeclarativeFraction::VERSION).not_to be nil
  end

  it 'does something useful' do
    half = DeclareFraction do
      numerator 1
      denominator 2
    end
    expect(half).to eq Rational(1, 2)
  end
end
