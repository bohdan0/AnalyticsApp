class User < ApplicationRecord
  has_many :events,
    primary_key: :user_id
end
