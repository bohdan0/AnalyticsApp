class Event < ApplicationRecord
  belongs_to :user,
    primary_key: :user_id

  belongs_to :app,
    primary_key: :app_id
end
