# frozen_string_literal: true

require 'rails_helper'

describe FrontController, type: :routing do
  describe 'GET index' do
    it 'renders the index view' do
      get :index
      expect(get('/')).to route_to(controller: 'front', action: 'index')
    end
  end

  describe 'GET resume' do
    it 'renders the index view' do
      get :resume
      expect(get('/resume')).to route_to('front#resume')
    end
  end
end
