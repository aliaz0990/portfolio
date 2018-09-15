require 'spec_helper'

RSpec.describe 'front/index.html.haml' do

  it 'renders the HTML template' do
    render

    expect(rendered).to match /HTML/
  end

end

RSpec.describe 'front/sections/content/resume/_resume.html.haml' do

	it 'renders the partial Haml' do
		stub_template "front/sections/content/resume/_resume.html.haml" => "This content"
		render
		expect(rendered).to match /This content/
	end


end
