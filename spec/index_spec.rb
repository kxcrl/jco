require 'spec_helper'

describe 'page' do
  subject { page }
  before { visit '/' }
  it { should have_content 'jeramy.co' }
  it { should have_content 'I believe' }
end
