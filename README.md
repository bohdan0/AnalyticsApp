# Analytics app

### This is backend web service that handles analytics for applications. It uses HTTP API with next endpoints:

- `/event` endpoint allows clients to send 2 integers of information - `app_id` and `user_id` - as well as a string - `name`. Each incoming message is being processed by giving the event a unique identifier and then stored into database. The API responds with the generated unique identifier `id`.

- `/events/:id` endpoint shows data (`app_id` ,`user_id`, `name`) associated with an event of that identifier if it has been processed.

- `/apps/:id` endpoint shows the **number of events** for that app and the **number of unique user ids** across all the app’s events.

### How to use

- clone this repo
- run Postgres server
- run `bundle install`
- run `bundle exec rake db:setup`
- run `rails s`
- go to `localhost:3000` and then navigate no right endpoint