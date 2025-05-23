import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :missing_heex_warning_repro, MissingHeexWarningReproWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "Sf9T+KYAEdJ2YGi8fKppNe2zaqnkdEvGm32hvaQ0IR3mRPT5+wzJi/REjBcVp6yN",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
