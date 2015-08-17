require 'spec_helper'
require 'time_ago_formatter.rb'

RSpec.describe TimeAgoFormatter do
  it 'can be constructed' do
    expect(described_class.new).not_to be_nil
  end

  it 'can do all of the formatting' do
    ago = (1.year + 2.months + 3.days + 4.hours + 5.minutes + 6.seconds).ago
    human_version = "1 year, 2 months, 3 days, 4 hours, 5 minutes ago"

    expect(described_class.new(ago).to_human).to eq human_version
  end
end
