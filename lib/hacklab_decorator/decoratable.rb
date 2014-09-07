module HacklabDecorator

  module Decoratable

    def decorate(options = {})
      klass = options.fetch(:with) { "#{self.class.name}Decorator".constantize }
      decorator = klass.new

      decorator
    end

  end

end
