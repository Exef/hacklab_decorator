module HacklabDecorator

  class Decorator

    attr_accessor :object

    def initialize(object)
      @object = object
    end

    def self.delegate_all
      class_eval do
        def method_missing(meth, *args, &block)
          if object.respond_to? meth
            object.send meth, *args, &block
          else
            super
          end
        end
      end
    end

  end

end
