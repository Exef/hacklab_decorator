module HacklabDecorator
  class Decorator

    attr_accessor :object

    def initialize(object)
      @object = object
    end

    def self.delegate_all
      define_method :method_missing do | meth, *args, &block |
        if object.respond_to? meth
          object.send meth, *args, &block
        else
          super meth, *args, &block
        end
      end
    end

    def h
      RequestStore[:current_controller].view_context
    end

  end
end
