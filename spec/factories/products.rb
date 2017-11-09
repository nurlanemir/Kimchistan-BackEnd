FactoryBot.define do
  factory :product do
    name 'MyString'
    price 1
    image 'Image'
    description 'Description'
    of_type 'dish'
    status true
  end
end
