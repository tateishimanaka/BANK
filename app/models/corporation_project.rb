class CorporationProject < ApplicationRecord

  belongs_to :collateral
  belongs_to :fund_type
  belongs_to :use_of_fund
  belongs_to :store

  validates :appoint_date, presence: true
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :president, presence: true
  validates :president_kana, presence: true


end
