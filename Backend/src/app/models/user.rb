class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: true, presence: { message: "ユーザ名が入力されていません" }
    validates :password_digest, presence: { message: "パスワードが入力されていません" }
end
