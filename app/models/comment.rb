#=============Comment Model Field name and data types=========#
# body:string
#===========================END==============================#
class Comment < ApplicationRecord
  belongs_to :post
  has_many :replies, dependent: :destroy

  validates :body, presence: true
end
