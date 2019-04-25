require 'declarative_fraction/version'

module DeclarativeFraction
  class Error < StandardError; end

  class << self
    def declare(&block)
      FractionDeclaration
        .new
        .tap { |fd| fd.instance_exec(&block) }
        .result
    end
  end

  class FractionDeclaration
    def numerator(value)
      @numerator = value
    end

    def denominator(value)
      @denominator = value
    end

    def result
      Rational(@numerator, @denominator)
    end
  end
end

Kernel.define_method(:DeclareFraction, &DeclarativeFraction.method(:declare))
