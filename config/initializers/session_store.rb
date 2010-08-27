# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dealbook_session',
  :secret      => 'ddb45d15a1e9a9f4b6ea3fe1921b12dea6ac9d62cfac2a5ede965b00344cd809f1fb4cb7b70b0d4c14898684e8ff80f315a438f498d4b71cac63884dfce50be7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
