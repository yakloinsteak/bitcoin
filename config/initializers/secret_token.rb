# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Bitcoin::Application.config.secret_key_base = '1763b74886c181d70d004987f9190c8dd1e38138f43753ccd95170541646772803eb809a3f251ede491c0888a923084bd418580795b7721ba91ce6db99b54904'
