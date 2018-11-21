# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :name, length: { maximum: 30 }, presence: true
  validates :email, format: { with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i }
  validates :subject, length: { maximum: 20 }, presence: true
  validates :content, presence: true
end
