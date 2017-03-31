class App < ApplicationRecord
  has_many :events,
    primary_key: :app_id

  has_many :users,
    -> { distinct },
    through: :events
end
