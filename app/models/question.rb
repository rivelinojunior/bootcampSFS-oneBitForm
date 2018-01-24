class Question < ApplicationRecord
  belongs_to :form
  has_many :questions_answers, dependent: :destroy

  enum kind: [ :short_text, :long_text, :integer, :boolean ]
  
  validates :title, :kind, :form, presence: true  
end
