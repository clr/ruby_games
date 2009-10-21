# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prime_find_server_session',
  :secret      => 'ca77499494d66c05a08af26f91df4d2a89445a4c538eb4b4b58883b09dc54b859b22cad61afa8fbec371b5fd9c586fc72470f40f69f4a196061392504aa52966'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
