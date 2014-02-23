require 'spec_helper'

describe 'main page' do
  subject { page }
  before { visit '/' }
  it { should have_content 'Hang tight. More on the way.' }
end
