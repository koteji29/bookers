class Book < ApplicationRecord
  has_one_attached :image
# trueでデータが存在品とならない設定
  validates :title,presence: true
  validates :body, presence: true
end
