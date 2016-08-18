class Division < ActiveRecord::Base
  has_many :transactions
  has_many :accounts, through: :transactions
end
