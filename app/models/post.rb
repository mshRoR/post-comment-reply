#=============Post Model Field name and data types=========#
# title:string
# description:text
#=========================END==============================#
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
