require 'spec_helper'
describe HacklabDecorator::Decoratable do

  subject { create_project }

  describe '#decorate' do
    it 'default' do
      expect(subject.decorate).to be_a(ProjectDecorator)
    end
  end

end
