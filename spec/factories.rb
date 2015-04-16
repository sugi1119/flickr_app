FactoryGirl.define do
  factory :photo do
    sequence(:id) {|n| "#{n}"}
    sequence(:title) {|n| "cat#{n}"}
    sequence(:link_url){|n| "http://photo.com/photos/link#{n}"}
    sequence(:thumbnail_url){|n| "http://photo.#{n}.s.jpg"}
    sequence(:original_url){|n| "http://photo.#{n}.z.jpg"}
  end
end