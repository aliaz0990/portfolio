# frozen_string_literal: true

require 'rails_helper'

describe FrontController, type: :routing do
  describe 'GET index' do
    it 'route index view' do
      get :index
      expect(get('/')).to route_to('front#index')
    end
  end

  describe 'GET resume' do
    it 'route resume view' do
      get :resume
      expect(get('/resume')).to route_to('front#resume')
    end
  end

  describe 'GET portfolio' do
    it 'route portfolio view' do
      get :portfolio
      expect(get('/portfolio')).to route_to('front#portfolio')
    end
  end

  describe 'GET contact' do
    it 'route contact view' do
      get :contact
      expect(get('/contact')).to route_to('front#contact')
    end
  end
end
