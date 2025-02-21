class Book < ApplicationRecord
    has_many :lending_histories
    validates :title, :author, presence: true
    validates :status, inclusion: { in: %w[available borrowed] }
  end
  