# frozen_string_literal: true

FactoryBot.define do
  factory :contact do
    name { 'MyString' }
    email { 'MyString' }
    subject { 'MyString' }

    content { 'MyString' }
  end
end
