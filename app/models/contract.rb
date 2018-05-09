class Contract < ApplicationRecord
  belongs_to :Client
  belongs_to :Employee
end
