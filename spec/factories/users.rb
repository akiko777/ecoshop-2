FactoryBot.define do

  factory :user do
    nickname               {"まい"}
    email                  {Faker::Internet.free_email}
    password               {"000000f"}
    password_confirmation  {"000000f"}
    family_name            {"山田"}
    first_name             {"舞"}
    family_name_kana       {"ヤマダ"}
    first_name_kana        {"マイ"}
    birthday               {"2010-12-24"}
  end
end