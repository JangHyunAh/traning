# app/models/user.rb
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  # 기타 필요한 유효성 검사 추가
end
