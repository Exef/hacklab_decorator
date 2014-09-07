module HacklabDecorator

  module Decoratable

    def decorate
      klass = "#{self.class.name}Decorator".constantize
      klass.new
    end

  end

end
