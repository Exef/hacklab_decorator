require 'spec_helper'

describe HacklabDecorator::Decorator do

  let(:project) {create_project}

  context 'InsanceMethods' do
    subject { HacklabDecorator::Decorator.new(project) }

    it '#object' do
      expect(subject.object).to eq project
    end

  end

end
