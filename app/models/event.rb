class Event < ApplicationRecord
  def self.get_metrics(app_id)
    select('COUNT(id) num_events', 'COUNT(DISTINCT user_id) num_users')
    .where('app_id = ?', app_id)[0]
  end
end
