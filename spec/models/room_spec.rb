require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    before do
      @room = FactoryBot.build(:room)
    end

    it 'nameの値が存在すれば登録できること' do
      # 新しく何かを定義したりせずともファクトリーボットがあらかじめデータを生成しているのでこのまま確認する
      expect(@room).to be_valid
    end

    it 'nameが空では登録できないこと' do
        @room.name = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
    end
  end
end
