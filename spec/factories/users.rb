#
#ファクトリーボットを使ってダミー情報を作成
#
FactoryBot.define do
  factory :user do
    #テキトーな名前
    name {Faker::Name.last_name}
    # テキトーなメールアドレス
    email {Faker::Internet.free_email}
    # テキトーなパスワードだたし６文字以上
    password = Faker::Internet.password(min_length: 6)
    # 大事なことなので３回言いました。
    password {password}
    password_confirmation {password}
  end
end