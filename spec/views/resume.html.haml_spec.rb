# frozen_string_literal: true

require 'spec_helper'

describe 'front/resume.html.haml' do
  it 'verify page render' do
    render
    expect(rendered).to match('resume')
  end
end
