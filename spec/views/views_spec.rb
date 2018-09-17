# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'front/sections/content/home/_home.html.haml' do
  it 'render home partial' do
    stub_template 'front/sections/content/home/_home.html.haml' => 'This content'
    render
    expect(rendered).to match /This content/
  end
end

RSpec.describe 'front/sections/content/resume/_resume.html.haml' do
  it 'render resume partial' do
    stub_template 'front/sections/content/resume/_resume.html.haml' => 'This content'
    render
    expect(rendered).to match /This content/
  end
end
