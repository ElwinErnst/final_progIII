class Transfer < ApplicationRecord
  belongs_to :account
  validates :account, :presence => true, :uniqueness => true
  validates :concept, :presence => true, :uniqueness => true

  def saldo
    active - pasive 
end
