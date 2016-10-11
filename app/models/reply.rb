#=============Reply Model Field name and data types=========#
# body:string
#===========================END=============================#
class Reply < ApplicationRecord
  belongs_to :comment

  validates :body, presence: true
end
