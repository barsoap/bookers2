class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # validates :name, presence: true 名前のバリデーション機能つけたら新規投稿できなくなる
end
