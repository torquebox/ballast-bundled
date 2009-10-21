# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ballast-bundled_session',
  :secret      => '209c197be68d263e14d9a153b0f2bdc9c873df12d2cab3ca54e1c026445d3fa84db611a8350ba1e854d1843456e7dd3f2d70b2f08c639d2c08a72d39024affe8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
puts "(init) about to set to AR session_store"
ActionController::Base.session_store = :active_record_store
puts "(init) complete set to AR session_store"
puts "(init) session_store=#{ActionController::Base.session_store}"
