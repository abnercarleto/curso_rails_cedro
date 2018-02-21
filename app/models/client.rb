class Client < ApplicationRecord
  validates :name, :identification_document, :birth_date, presence: true
end
