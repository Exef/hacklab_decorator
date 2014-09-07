require 'spec_helper'

describe HacklabDecorator::Decorator do

  let(:project) {create_project}
  let(:product) { double('Product') }

  protect_class HacklabDecorator::Decorator

  context 'InsanceMethods' do
    subject { HacklabDecorator::Decorator.new(project) }

    it '#object' do
      expect(subject.object).to eq project
    end
  end

  context 'ClassMethods' do
    subject { HacklabDecorator::Decorator.new(product) }

    it '.delegate_all' do
       HacklabDecorator::Decorator.delegate_all

       items = 5
       my_block = ->{}

       expect(product).to receive(:name)
       expect(product).to receive(:desctiption)
       expect(product).to receive(:price)
       expect(product).to receive(:buy).with(items, my_block)
       expect(project).to receive(:to_s).never

       subject.name
       subject.desctiption
       subject.price
       subject.buy(items, my_block)
       subject.to_s

       expect { subject.some_method }.to raise_error(NameError)
    end

  end

end
