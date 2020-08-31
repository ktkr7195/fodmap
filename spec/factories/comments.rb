FactoryBot.define do
  factory :comment do
    content { 'MyString' }
    user { nil }
    recipe { nil }
  end
end
