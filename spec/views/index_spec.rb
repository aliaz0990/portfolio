require 'spec_helper'

RSpec.describe 'front/index.html.haml' do

  it 'renders the HTML template' do
    render

    expect(rendered).to match /HTML/
  end

end
