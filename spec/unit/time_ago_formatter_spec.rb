require 'spec_helper'
require 'time_ago_formatter.rb'

RSpec.describe TimeAgoFormatter do
  it 'can be constructed' do
    expect(described_class.new).not_to be_nil
  end
end
