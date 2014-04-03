FactoryGirl.define do
  factory :foo, class: Note do
    title "Foo"
  end

  factory :bar, class: Note do
    title "Bar"
  end
end