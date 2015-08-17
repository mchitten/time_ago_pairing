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

  context '29 seconds ago' do
    let(:ago) { 29.seconds.ago }
    it 'returns "in the last minute"' do
      expect(described_class.new(ago).to_human).to eq "in the last minute"
    end
  end

  context '30 seconds ago' do
    let(:ago) { 1.minute.ago }
    it 'returns "1 minute ago"' do
      expect(described_class.new(ago).to_human).to eq "1 minute ago"
    end
  end

  context '2 minutes 0 seconds ago' do
    let(:ago) { 2.minutes.ago }
    it 'returns "2 minutes ago"' do
      expect(described_class.new(ago).to_human).to eq "2 minutes ago"
    end
  end

  context '2 minutes 31 seconds ago' do
    let(:ago) { 3.minutes.ago }
    it 'returns "3 minutes ago"' do
      expect(described_class.new(ago).to_human).to eq "3 minutes ago"
    end
  end

  context '1 hour 3 minutes ago' do
    let(:ago) { (1.hour + 3.minutes).ago }
    it 'returns 1 hour, 3 minutes ago' do
      expect(described_class.new(ago).to_human).to eq '1 hour, 3 minutes ago'
    end
  end

  context '3 days, 1 hour and 5 minutes ago' do
    let(:ago) { (3.days + 1.hour + 5.minutes).ago }
    it 'returns "3 days, 1 hour and 5 minutes ago"' do
      expect(described_class.new(ago).to_human).to eq "3 days, 1 hour and 5 minutes ago"
    end
  end

  context '1 month, 2 days and 3 hours ago' do
    let(:ago) { (1.month + 2.days + 3.hours).ago }
    it 'returns "1 month, 2 days, 3 hours ago"' do
      expect(described_class.new(ago).to_human).to eq "1 month, 2 days, 3 hours ago"
    end
  end
end
