class Activity < ApplicationRecord
  enum type: { clase: 'clase', ejercicio: 'ejercicio', recurso: 'recurso' }, _prefix: true
  belongs_to :unit
  has_one_attached :file
  has_many :solutions, through: :activities # , source: :join_association_table_foreiable
  validates :title, presence: true
  validates :description, presence: true
end
