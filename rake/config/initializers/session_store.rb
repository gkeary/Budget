# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rake_session',
  :secret      => '03c8f3d29a48aebb6e97c96693faddaee909348c1df2757a9dc319e4e56a3333ecfbf020e60e71447edb6999997175a4db1ebc8fb6d8a5ae7ddedecd6c7eedbc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
