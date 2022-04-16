class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :books, dependent: :destroy
  
  has_one_attached :profile_image
  # has_one_attached :profile_imageという記述により、profile_imageという
  # 名前でActiveStorageでプロフィール画像を保存できるように設定しました。
end
