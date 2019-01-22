# frozen_string_literal: true

require 'spec_helper'

describe 'front/contact.html.haml' do
  it 'verify page render' do
    render
    expect(rendered).to match('contact')
  end
end
