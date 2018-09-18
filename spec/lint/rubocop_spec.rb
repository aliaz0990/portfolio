# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Rubocop' do
  subject(:report) { `rubocop` }

  it 'has no offenses' do
    expect(report).to match(/no\ offenses\ detected/)
  end
end
