class IndividualProject < ApplicationRecord

  belongs_to :collateral
  belongs_to :fund_type
  belongs_to :use_of_fund
  belongs_to :store

  validates :appoint_date, presence: true
  validates :last_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name, presence: true
  validates :first_name_kana, presence: true
end
