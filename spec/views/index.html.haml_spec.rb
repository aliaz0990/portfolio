# frozen_string_literal: true

require 'spec_helper'

describe 'front/index.html.haml' do
  it 'render the HTML template' do
    render
    expect(rendered).to match 'HTML'
  end
end
