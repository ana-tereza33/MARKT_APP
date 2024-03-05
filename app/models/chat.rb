class Chat < ApplicationRecord
  belongs_to :farmer
  belongs_to :user
end
